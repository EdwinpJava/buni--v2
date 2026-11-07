import { pool } from './config.js';
import { v4 as uuidv4 } from 'uuid';

const DEMO_CATEGORY = 'DEMO_SIM_30_EVENTS';

const CAREERS = [
  { name: 'Ingeniería de Sistemas', semesters: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
  { name: 'Medicina', semesters: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] },
  { name: 'Derecho', semesters: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
  { name: 'Psicología', semesters: [1, 2, 3, 4, 5, 6, 7, 8] },
];

const EVENT_NAMES = [
  'Seminario de Innovación Académica',
  'Taller de Liderazgo Estudiantil',
  'Jornada de Bienestar Integral',
  'Foro de Emprendimiento Universitario',
  'Laboratorio de Habilidades Digitales',
  'Encuentro de Orientación Profesional',
  'Clínica de Escritura Académica',
  'Taller de Oratoria y Presentación',
  'Reto de Proyectos Interdisciplinarios',
  'Ciclo de Conferencias de Impacto Social',
];

const shuffle = (arr) => [...arr].sort(() => Math.random() - 0.5);
const randomInt = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
const pick = (arr, count) => shuffle(arr).slice(0, Math.min(count, arr.length));

const makeStudentRows = () => {
  const first = ['Juan', 'María', 'Pedro', 'Ana', 'Luisa', 'Carlos', 'Sofía', 'Andrés', 'Valentina', 'Mateo'];
  const last = ['Gómez', 'Rodríguez', 'Pérez', 'López', 'Martínez', 'Sánchez', 'Díaz', 'Torres', 'Ramírez', 'Vargas'];
  const rows = [];
  let codeNum = 20270001;

  for (let i = 0; i < 180; i += 1) {
    const career = CAREERS[randomInt(0, CAREERS.length - 1)];
    const semester = career.semesters[randomInt(0, career.semesters.length - 1)];
    const name = `${first[randomInt(0, first.length - 1)]} ${last[randomInt(0, last.length - 1)]} ${last[randomInt(0, last.length - 1)]}`;
    const code = String(codeNum++);
    rows.push({
      id: uuidv4(),
      name,
      code,
      email: `${code}@sim.buni.local`,
      type: 'estudiante',
      carrera: career.name,
      semestre: semester,
    });
  }
  return rows;
};

const toAssistRow = (s) => ({
  nombre: s.name,
  correo: s.email,
  codigo: s.code,
  tipo: s.type,
  carrera: s.carrera,
  semestre: s.semestre,
});

const ensureParticipants = async (students) => {
  for (const s of students) {
    await pool.query(
      `INSERT INTO participants (id, name, code, email, type)
       VALUES (?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE
         name = VALUES(name),
         email = VALUES(email),
         type = VALUES(type)`,
      [s.id, s.name, s.code, s.email, s.type]
    );
  }
};

const getBaseCatalog = async () => {
  const [[scenery]] = await pool.query('SELECT id, name FROM sceneries LIMIT 1');
  const [[program]] = await pool.query('SELECT id, name FROM programs LIMIT 1');
  const [[formAssist]] = await pool.query('SELECT id, name FROM forms LIMIT 1');
  const [[formInscription]] = await pool.query('SELECT id, name FROM forms LIMIT 1');

  if (!scenery || !program || !formAssist || !formInscription) {
    throw new Error('Faltan datos base: requiere al menos 1 scenery, 1 program y 1 form.');
  }
  return { scenery, program, formAssist, formInscription };
};

const getOrganizers = async () => {
  const [rows] = await pool.query(`
    SELECT u.id, u.name, u.role_id
    FROM users u
    JOIN roles r ON r.id = u.role_id
  `);

  const [roles] = await pool.query('SELECT id, permissions FROM roles');
  const rolePermissions = new Map(roles.map((r) => [r.id, typeof r.permissions === 'string' ? JSON.parse(r.permissions) : r.permissions]));

  const eligible = rows.filter((u) => {
    const role = rolePermissions.get(u.role_id);
    return !!role?.events?.create;
  });

  if (eligible.length === 0) {
    throw new Error('No hay usuarios con permiso events.create para asignar organizadores.');
  }

  return eligible;
};

const cleanupPreviousDemo = async () => {
  await pool.query('DELETE FROM events WHERE category = ?', [DEMO_CATEGORY]);
};

const createEventWithData = async ({ idx, organizer, catalog, students }) => {
  const eventId = uuidv4();
  const phasesCount = randomInt(1, 4);
  const registrationsCount = randomInt(35, 95);
  const attendeesCount = randomInt(Math.floor(registrationsCount * 0.55), Math.floor(registrationsCount * 0.9));
  const selectedRegistrations = pick(students, registrationsCount);
  const selectedAttendees = pick(selectedRegistrations, attendeesCount);

  const now = Date.now();
  const daysAgo = randomInt(2, 120);
  const start = new Date(now - daysAgo * 24 * 60 * 60 * 1000);
  const hours = randomInt(2, 8);
  const end = new Date(start.getTime() + hours * 60 * 60 * 1000);

  const eventName = `${EVENT_NAMES[idx % EVENT_NAMES.length]} #${idx + 1}`;
  const isRecurrent = phasesCount > 1 ? 1 : 0;

  await pool.query(
    `INSERT INTO events (
      id, nombre, organizador, organizer_id, scenery, programs, cupos, horarioInicio, horarioFin, state,
      formAssists, formInscriptions, assists, inscriptions, formConfig, category, is_recurrent, recurrence_config
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    [
      eventId,
      eventName,
      organizer.name,
      organizer.id,
      JSON.stringify({ id: catalog.scenery.id, key: 'scenery' }),
      JSON.stringify({ id: catalog.program.id, key: 'programs' }),
      String(randomInt(40, 150)),
      start,
      end,
      'true',
      JSON.stringify({ id: catalog.formAssist.id, key: 'forms' }),
      JSON.stringify({ id: catalog.formInscription.id, key: 'forms' }),
      JSON.stringify(selectedAttendees.map(toAssistRow)),
      JSON.stringify(selectedRegistrations.map(toAssistRow)),
      JSON.stringify({
        inscriptions: { enabled: true, startDate: start.toISOString(), endDate: end.toISOString() },
        assists: { enabled: true, startDate: start.toISOString(), endDate: end.toISOString() },
      }),
      DEMO_CATEGORY,
      isRecurrent,
      isRecurrent
        ? JSON.stringify({ frequency: 'weekly', total_phases: phasesCount, start_date: start.toISOString(), end_date: end.toISOString() })
        : null,
    ]
  );

  for (const p of selectedRegistrations) {
    const attended = selectedAttendees.some((a) => a.code === p.code) ? 1 : 0;
    await pool.query(
      `INSERT INTO participant_history (id, participant_id, event_id, registered, attended, attendance_date)
       VALUES (?, ?, ?, ?, ?, ?)`,
      [uuidv4(), p.id, eventId, 1, attended, attended ? new Date(start.getTime() + 20 * 60 * 1000) : null]
    );
  }

  const duration = (end.getTime() - start.getTime()) / phasesCount;
  const phases = [];
  for (let i = 0; i < phasesCount; i += 1) {
    const phaseId = uuidv4();
    const phaseStart = new Date(start.getTime() + duration * i);
    const phaseEnd = new Date(start.getTime() + duration * (i + 1));
    await pool.query(
      `INSERT INTO event_phases (id, event_id, name, start_date, end_date)
       VALUES (?, ?, ?, ?, ?)`,
      [phaseId, eventId, phasesCount === 1 ? 'Fase Única' : `Fase ${i + 1}`, phaseStart, phaseEnd]
    );
    phases.push({ id: phaseId, phaseStart, idx: i });
  }

  for (const ph of phases) {
    const retention = phasesCount === 1 ? 1 : Math.max(0.45, 1 - ph.idx * 0.15);
    const phaseAttendees = pick(selectedAttendees, Math.max(8, Math.ceil(selectedAttendees.length * retention)));
    for (const p of phaseAttendees) {
      const r = Math.random();
      const rating = r < 0.12 ? null : (r < 0.2 ? 3 : (r < 0.65 ? 4 : 5));
      await pool.query(
        `INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at, rating)
         VALUES (?, ?, ?, ?, ?, ?)`,
        [uuidv4(), p.id, ph.id, 1, new Date(ph.phaseStart.getTime() + 10 * 60 * 1000), rating]
      );
    }
  }
};

const main = async () => {
  try {
    console.log('== Seed simulación 30 eventos: iniciando ==');
    console.log(`Categoria de simulación: ${DEMO_CATEGORY}`);

    const catalog = await getBaseCatalog();
    const organizers = await getOrganizers();
    const students = makeStudentRows();

    await ensureParticipants(students);
    await cleanupPreviousDemo();

    for (let i = 0; i < 30; i += 1) {
      const organizer = organizers[i % organizers.length];
      await createEventWithData({ idx: i, organizer, catalog, students });
    }

    console.log('== Seed simulación 30 eventos: completado ==');
    console.log('Se insertaron 30 eventos con fases, inscripciones, asistencias y ratings.');
    process.exit(0);
  } catch (error) {
    console.error('Error en seed simulación 30 eventos:', error);
    process.exit(1);
  }
};

main();
