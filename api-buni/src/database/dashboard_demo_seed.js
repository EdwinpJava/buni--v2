import { pool } from './config.js';
import { v4 as uuidv4 } from 'uuid';

/**
 * SEED: Datos de prueba para evidenciar el Dashboard Estadístico
 *
 * Ejecutar:
 *   node src/database/dashboard_demo_seed.js
 *
 * Qué crea:
 * - Actividades (events) con category='DEMO_DASHBOARD' (se eliminan y recrean en cada ejecución)
 * - Fases (event_phases) por actividad
 * - Asistencias por fase (phase_attendances) con rating (1-5)
 * - Participantes + historial (participants, participant_history) para métricas de asistencia
 * - events.assists incluye campos carrera/semestre para analítica académica
 */

const DEMO_CATEGORY = 'DEMO_DASHBOARD';

const ensureRatingColumn = async () => {
  const [cols] = await pool.query(`SHOW COLUMNS FROM phase_attendances LIKE 'rating'`);
  if (cols.length === 0) {
    await pool.query(`ALTER TABLE phase_attendances ADD COLUMN rating INT DEFAULT NULL`);
  }
};

const getFirstId = async (table) => {
  const [rows] = await pool.query(`SELECT id FROM \`${table}\` LIMIT 1`);
  return rows?.[0]?.id || null;
};

const upsertParticipant = async (p) => {
  // participants.code es UNIQUE y NOT NULL → siempre enviamos code/email
  await pool.query(
    `
      INSERT INTO participants (id, name, code, email, type)
      VALUES (?, ?, ?, ?, ?)
      ON DUPLICATE KEY UPDATE
        name = VALUES(name),
        email = VALUES(email),
        type = VALUES(type)
    `,
    [p.id, p.name, p.code, p.email, p.type || 'estudiante']
  );
};

const upsertHistory = async (h) => {
  await pool.query(
    `
      INSERT INTO participant_history (id, participant_id, event_id, registered, attended, attendance_date)
      VALUES (?, ?, ?, ?, ?, ?)
      ON DUPLICATE KEY UPDATE
        registered = VALUES(registered),
        attended = VALUES(attended),
        attendance_date = VALUES(attendance_date)
    `,
    [h.id, h.participant_id, h.event_id, h.registered, h.attended, h.attendance_date]
  );
};

const upsertPhaseAttendance = async (pa) => {
  await pool.query(
    `
      INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at, rating)
      VALUES (?, ?, ?, ?, ?, ?)
      ON DUPLICATE KEY UPDATE
        attended = VALUES(attended),
        registered_at = VALUES(registered_at),
        rating = COALESCE(VALUES(rating), rating)
    `,
    [pa.id, pa.participant_id, pa.phase_id, pa.attended, pa.registered_at, pa.rating]
  );
};

const buildStudents = () => {
  // Nota: dejamos Ingeniería de Sistemas semestre 4 con baja/0 participación (para evidenciar el drill-down)
  const careers = [
    { carrera: 'Ingeniería de Sistemas', semestres: [1, 2, 3, 4, 5, 6] },
    { carrera: 'Medicina', semestres: [1, 2, 3, 4, 5] },
    { carrera: 'Derecho', semestres: [1, 2, 3, 4, 5, 6, 7] },
    { carrera: 'Psicología', semestres: [1, 2, 3, 4] },
  ];

  let n = 1;
  const list = [];
  for (const c of careers) {
    for (const s of c.semestres) {
      // 3 estudiantes por semestre (suficiente para ver variación)
      for (let i = 0; i < 3; i++) {
        const code = `DEMO${String(n).padStart(4, '0')}`;
        list.push({
          id: uuidv4(),
          name: `Estudiante ${code}`,
          email: `${code.toLowerCase()}@demo.local`,
          code,
          type: 'estudiante',
          carrera: c.carrera,
          semestre: s,
        });
        n += 1;
      }
    }
  }
  return list;
};

const pick = (arr, count, filterFn = null) => {
  const poolArr = filterFn ? arr.filter(filterFn) : [...arr];
  const shuffled = poolArr.sort(() => Math.random() - 0.5);
  return shuffled.slice(0, Math.min(count, shuffled.length));
};

const toAssistRow = (p) => ({
  nombre: p.name,
  correo: p.email,
  codigo: p.code,
  tipo: p.type,
  carrera: p.carrera,
  semestre: p.semestre,
});

const main = async () => {
  try {
    console.log('== Seed DEMO Dashboard: iniciando ==');

    await ensureRatingColumn();

    // IDs base para cumplir NOT NULL de JSONs en events
    const sceneryId = await getFirstId('sceneries');
    const programId = await getFirstId('programs');
    const formAssistsId = await getFirstId('forms');
    const formInscriptionsId = await getFirstId('forms');

    if (!sceneryId || !programId || !formAssistsId || !formInscriptionsId) {
      throw new Error('Faltan datos base (sceneries/programs/forms). Crea al menos 1 de cada uno antes del seed.');
    }

    // Limpiar demo previo (cascadas eliminan fases/asistencias/historial)
    await pool.query(`DELETE FROM events WHERE category = ?`, [DEMO_CATEGORY]);

    const students = buildStudents();
    for (const s of students) await upsertParticipant(s);

    const organizers = [
      { name: 'Bienestar', bias: (p) => p.carrera !== 'Ingeniería de Sistemas' || p.semestre !== 4 }, // evita sem4
      { name: 'Jonathan', bias: (p) => p.carrera === 'Ingeniería de Sistemas' && p.semestre !== 4 },
      { name: 'Ana', bias: (p) => p.carrera === 'Derecho' || p.carrera === 'Psicología' },
    ];

    const activitiesPlan = [
      { nombre: 'Taller de Manejo del Estrés', organizador: 'Bienestar', phases: 3, attendees: 35 },
      { nombre: 'Jornada de Actividad Física', organizador: 'Bienestar', phases: 2, attendees: 28 },
      { nombre: 'Charla de Orientación Profesional', organizador: 'Jonathan', phases: 3, attendees: 24 },
      { nombre: 'Espacio de Salud Mental', organizador: 'Jonathan', phases: 2, attendees: 18 },
      { nombre: 'Encuentro Cultural', organizador: 'Ana', phases: 3, attendees: 30 },
      { nombre: 'Prevención Jurídica Básica', organizador: 'Ana', phases: 2, attendees: 22 },
    ];

    const now = new Date();
    let dayOffset = 0;

    for (const plan of activitiesPlan) {
      const eventId = uuidv4();
      const start = new Date(now.getTime() - (dayOffset + 7) * 24 * 60 * 60 * 1000);
      const end = new Date(start.getTime() + 3 * 60 * 60 * 1000);
      dayOffset += 2;

      const orgBias = organizers.find(o => o.name === plan.organizador)?.bias || null;
      const attendees = pick(students, plan.attendees, orgBias);

      // Inscritos: un poco más que asistentes
      const inscriptions = pick(students, Math.min(plan.attendees + 8, students.length), orgBias);

      const payload = {
        id: eventId,
        nombre: plan.nombre,
        organizador: plan.organizador,
        scenery: JSON.stringify({ id: sceneryId, key: 'scenery' }),
        programs: JSON.stringify({ id: programId, key: 'programs' }),
        cupos: '-1',
        horarioInicio: start,
        horarioFin: end,
        state: 'false',
        formAssists: JSON.stringify({ id: formAssistsId, key: 'forms' }),
        formInscriptions: JSON.stringify({ id: formInscriptionsId, key: 'forms' }),
        assists: JSON.stringify(attendees.map(toAssistRow)),
        inscriptions: JSON.stringify(inscriptions.map(toAssistRow)),
        formConfig: JSON.stringify({
          assists: { enabled: false, startDate: '', endDate: '' },
          inscriptions: { enabled: false, startDate: '', endDate: '' },
        }),
        category: DEMO_CATEGORY,
        is_recurrent: plan.phases > 1 ? 1 : 0,
        recurrence_config: plan.phases > 1
          ? JSON.stringify({ frequency: 'daily', total_phases: plan.phases, start_date: start.toISOString(), end_date: end.toISOString() })
          : null,
      };

      await pool.query(`INSERT INTO events SET ?`, [payload]);

      // Historial (para métricas de asistencia del evento)
      for (const p of inscriptions) {
        const attended = attendees.some(a => a.code === p.code) ? 1 : 0;
        await upsertHistory({
          id: uuidv4(),
          participant_id: p.id,
          event_id: eventId,
          registered: 1,
          attended,
          attendance_date: attended ? new Date(start.getTime() + 30 * 60 * 1000) : null,
        });
      }

      // Crear fases + asistencias por fase con rating
      const phaseDuration = (end.getTime() - start.getTime()) / plan.phases;
      const phases = [];
      for (let i = 0; i < plan.phases; i++) {
        const phaseId = uuidv4();
        const phaseStart = new Date(start.getTime() + phaseDuration * i);
        const phaseEnd = new Date(start.getTime() + phaseDuration * (i + 1));
        await pool.query(
          `INSERT INTO event_phases (id, event_id, name, start_date, end_date) VALUES (?, ?, ?, ?, ?)`,
          [phaseId, eventId, `Fase ${i + 1}`, phaseStart, phaseEnd]
        );
        phases.push({ id: phaseId, start: phaseStart });
      }

      for (const ph of phases) {
        // En cada fase, participa un porcentaje diferente para evidenciar variación
        const pct = plan.phases === 1 ? 1 : (phases.indexOf(ph) === 0 ? 0.9 : phases.indexOf(ph) === 1 ? 0.65 : 0.5);
        const phaseAttendees = pick(attendees, Math.ceil(attendees.length * pct));

        for (const p of phaseAttendees) {
          const ratingChance = Math.random();
          const rating = ratingChance < 0.15 ? null : (1 + Math.floor(Math.random() * 5)); // algunos sin calificar
          await upsertPhaseAttendance({
            id: uuidv4(),
            participant_id: p.id,
            phase_id: ph.id,
            attended: 1,
            registered_at: new Date(ph.start.getTime() + 10 * 60 * 1000),
            rating,
          });
        }
      }
    }

    console.log('== Seed DEMO Dashboard: completado ==');
    process.exit(0);
  } catch (e) {
    console.error('Error en seed DEMO Dashboard:', e);
    process.exit(1);
  }
};

main();

