import fs from 'fs';
import mysql from 'mysql2/promise';
import { config } from 'dotenv';
import { v4 as uuidv4 } from 'uuid';
import bcrypt from 'bcryptjs';

config();

const pool = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
});

const generateStudents = () => {
  const careers = [
    { carrera: 'Ingeniería de Sistemas', semestres: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
    { carrera: 'Medicina', semestres: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] },
    { carrera: 'Derecho', semestres: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] },
    { carrera: 'Psicología', semestres: [1, 2, 3, 4, 5, 6, 7, 8] },
  ];

  const firstNames = ['Juan', 'María', 'Pedro', 'Ana', 'Luis', 'Diana', 'Carlos', 'Sofía', 'Jorge', 'Laura', 'Andrés', 'Valentina', 'Mateo', 'Camila', 'Santiago', 'Isabella', 'Sebastián', 'Gabriela', 'Felipe', 'Lucía'];
  const lastNames = ['Gómez', 'Rodríguez', 'Pérez', 'Martínez', 'Sánchez', 'García', 'López', 'Díaz', 'Torres', 'Ramírez', 'Hernández', 'Vásquez', 'Castro', 'Romero', 'Suárez', 'Herrera', 'Muñoz', 'Ruiz', 'Ortega', 'Silva'];

  const students = [];
  let codeNumber = 20260001;

  for (let i = 0; i < 60; i++) {
    const careerObj = careers[Math.floor(Math.random() * careers.length)];
    const semestre = careerObj.semestres[Math.floor(Math.random() * careerObj.semestres.length)];
    const firstName = firstNames[Math.floor(Math.random() * firstNames.length)];
    const lastName = lastNames[Math.floor(Math.random() * lastNames.length)];
    const secondLastName = lastNames[Math.floor(Math.random() * lastNames.length)];
    const name = `${firstName} ${lastName} ${secondLastName}`;
    const code = String(codeNumber++);
    const email = `${firstName.toLowerCase()}.${lastName.toLowerCase()}.${code}@universidad.edu.co`;

    students.push({
      id: uuidv4(),
      name,
      code,
      email,
      type: 'estudiante',
      carrera: careerObj.carrera,
      semestre,
    });
  }

  return students;
};

const pickRandom = (arr, count) => {
  const shuffled = [...arr].sort(() => Math.random() - 0.5);
  return shuffled.slice(0, count);
};

const toAssistRow = (student) => ({
  nombre: student.name,
  correo: student.email,
  codigo: student.code,
  tipo: student.type,
  carrera: student.carrera,
  semestre: student.semestre,
});

async function main() {
  try {
    console.log('== Iniciando Semillero de Simulación Realista para BUNI ==');

    // Desactivar restricciones de claves foráneas
    await pool.query('SET FOREIGN_KEY_CHECKS = 0');

    // Limpiar tablas para evitar colisiones
    const tablesToClean = [
      'users', 'roles', 'sceneries', 'programs', 'forms',
      'participants', 'events', 'participant_history', 'event_phases', 'phase_attendances'
    ];
    for (const table of tablesToClean) {
      console.log(`Limpiando tabla: ${table}`);
      await pool.query(`TRUNCATE TABLE \`${table}\``);
    }

    // 1. Crear Roles
    console.log('Insertando Roles...');
    const adminRoleId = uuidv4();
    const organizerRoleId = uuidv4();
    
    await pool.query(`
      INSERT INTO roles (id, name, permissions) 
      VALUES (?, ?, ?), (?, ?, ?)
    `, [
      adminRoleId, 'admin', JSON.stringify({ all: true }),
      organizerRoleId, 'organizador', JSON.stringify({ read: true, write: true })
    ]);

    // 2. Crear Usuarios (Administradores y Organizadores)
    console.log('Insertando Usuarios...');
    const hashedPassword = await bcrypt.hash('Admin123', 10);
    const userId1 = uuidv4();
    const userId2 = uuidv4();
    const userId3 = uuidv4();
    const userId4 = uuidv4();

    await pool.query(`
      INSERT INTO users (id, role_id, name, email, password)
      VALUES 
        (?, ?, ?, ?, ?),
        (?, ?, ?, ?, ?),
        (?, ?, ?, ?, ?),
        (?, ?, ?, ?, ?)
    `, [
      userId1, adminRoleId, 'Admin Principal', 'admin@buni.com', hashedPassword,
      userId2, organizerRoleId, 'Jonathan Pérez', 'jonathan@buni.com', hashedPassword,
      userId3, organizerRoleId, 'Ana María Gómez', 'ana@buni.com', hashedPassword,
      userId4, organizerRoleId, 'Bienestar Universitario', 'bienestar@buni.com', hashedPassword,
    ]);

    // 3. Crear Escenarios (Sceneries)
    console.log('Insertando Escenarios...');
    const scenery1 = { id: uuidv4(), name: 'Auditorio Principal', state: 'activo' };
    const scenery2 = { id: uuidv4(), name: 'Sala de Sistemas Lab-203', state: 'activo' };
    const scenery3 = { id: uuidv4(), name: 'Aula Magna Bloque C', state: 'activo' };
    const scenery4 = { id: uuidv4(), name: 'Cancha Polideportiva Principal', state: 'activo' };

    for (const sc of [scenery1, scenery2, scenery3, scenery4]) {
      await pool.query('INSERT INTO sceneries (id, name, state) VALUES (?, ?, ?)', [sc.id, sc.name, sc.state]);
    }

    // 4. Crear Programas (Programs)
    console.log('Insertando Programas Académicos...');
    const prog1 = { id: uuidv4(), name: 'Ingeniería de Sistemas', state: 'activo' };
    const prog2 = { id: uuidv4(), name: 'Medicina', state: 'activo' };
    const prog3 = { id: uuidv4(), name: 'Derecho', state: 'activo' };
    const prog4 = { id: uuidv4(), name: 'Psicología', state: 'activo' };

    for (const pr of [prog1, prog2, prog3, prog4]) {
      await pool.query('INSERT INTO programs (id, name, state) VALUES (?, ?, ?)', [pr.id, pr.name, pr.state]);
    }

    // 5. Crear Formularios (Forms)
    console.log('Insertando Formularios de Prueba...');
    const formInscriptionsId = uuidv4();
    const formAssistsId = uuidv4();

    const inscriptionFields = [
      { id: '1', type: 'text', label: 'Código Universitario', required: true },
      { id: '2', type: 'select', label: 'Programa Académico', options: ['Ingeniería de Sistemas', 'Medicina', 'Derecho', 'Psicología'], required: true },
      { id: '3', type: 'select', label: 'Semestre', options: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'], required: true }
    ];

    const assistFields = [
      { id: '1', type: 'text', label: 'Observaciones de Asistencia', required: false }
    ];

    await pool.query(`
      INSERT INTO forms (id, name, description, fields, state)
      VALUES (?, ?, ?, ?, ?), (?, ?, ?, ?, ?)
    `, [
      formInscriptionsId, 'Formulario de Inscripción Estándar', 'Formulario para la preinscripción de estudiantes a eventos y talleres.', JSON.stringify(inscriptionFields), 'activo',
      formAssistsId, 'Formulario de Control de Asistencia', 'Formulario para validar la asistencia física del participante.', JSON.stringify(assistFields), 'activo'
    ]);

    // 6. Crear Participantes (Students)
    console.log('Generando y guardando 60 Participantes...');
    const students = generateStudents();
    for (const st of students) {
      await pool.query(`
        INSERT INTO participants (id, name, code, email, type)
        VALUES (?, ?, ?, ?, ?)
      `, [st.id, st.name, st.code, st.email, st.type]);
    }

    // 7. Crear Eventos con Simulaciones Variadas
    console.log('Generando Eventos, Fases, Asistencias e Inscripciones...');
    const now = new Date();
    
    // Lista de eventos simulados
    const eventsConfig = [
      {
        nombre: 'Seminario de Inteligencia Artificial y Ética',
        organizador: 'Jonathan Pérez',
        scenery: scenery1, // Auditorio
        programs: [prog1], // Sistemas
        cupos: '50',
        diasAtras: 5,
        duracionHoras: 3,
        isRecurrent: true,
        fasesCount: 3,
        numInscritos: 45,
        numAsistentes: 38,
        categoria: 'DEMO_DASHBOARD'
      },
      {
        nombre: 'Taller Práctico de React y Next.js',
        organizador: 'Jonathan Pérez',
        scenery: scenery2, // Sistemas Lab
        programs: [prog1], // Sistemas
        cupos: '30',
        diasAtras: 3,
        duracionHoras: 4,
        isRecurrent: false,
        fasesCount: 1,
        numInscritos: 28,
        numAsistentes: 25,
        categoria: 'DEMO_DASHBOARD'
      },
      {
        nombre: 'Simposio Regional de Salud Mental y Sociedad',
        organizador: 'Ana María Gómez',
        scenery: scenery3, // Aula Magna
        programs: [prog4, prog2], // Psicología, Medicina
        cupos: '100',
        diasAtras: 8,
        duracionHoras: 5,
        isRecurrent: true,
        fasesCount: 2,
        numInscritos: 80,
        numAsistentes: 68,
        categoria: 'DEMO_DASHBOARD'
      },
      {
        nombre: 'Jornada de Integración Deportiva Universitaria',
        organizador: 'Bienestar Universitario',
        scenery: scenery4, // Cancha
        programs: [prog1, prog2, prog3, prog4], // Todos
        cupos: '150',
        diasAtras: 2,
        duracionHoras: 8,
        isRecurrent: false,
        fasesCount: 1,
        numInscritos: 120,
        numAsistentes: 95,
        categoria: 'DEMO_DASHBOARD'
      },
      {
        nombre: 'Congreso Internacional de Derecho Penal',
        organizador: 'Ana María Gómez',
        scenery: scenery3, // Aula Magna
        programs: [prog3], // Derecho
        cupos: '80',
        diasAtras: 12,
        duracionHoras: 6,
        isRecurrent: true,
        fasesCount: 4,
        numInscritos: 75,
        numAsistentes: 60,
        categoria: 'DEMO_DASHBOARD'
      },
      {
        nombre: 'Charla de Nutrición y Vida Saludable',
        organizador: 'Bienestar Universitario',
        scenery: scenery1, // Auditorio
        programs: [prog2], // Medicina
        cupos: '60',
        diasAtras: 1,
        duracionHoras: 2,
        isRecurrent: false,
        fasesCount: 1,
        numInscritos: 50,
        numAsistentes: 42,
        categoria: 'DEMO_DASHBOARD'
      }
    ];

    for (const ev of eventsConfig) {
      const eventId = uuidv4();
      const startTime = new Date(now.getTime() - ev.diasAtras * 24 * 60 * 60 * 1000);
      const endTime = new Date(startTime.getTime() + ev.duracionHoras * 60 * 60 * 1000);

      // Obtener el ID del organizador correspondiente
      let organizerId = userId1; // Por defecto Admin
      if (ev.organizador === 'Jonathan Pérez') organizerId = userId2;
      else if (ev.organizador === 'Ana María Gómez') organizerId = userId3;
      else if (ev.organizador === 'Bienestar Universitario') organizerId = userId4;

      // Elegir inscritos y asistentes de la lista de estudiantes de forma aleatoria filtrando por sesgos de programa
      const eligibleStudents = students.filter(s => {
        return ev.programs.some(p => p.name === s.carrera);
      });
      const poolSource = eligibleStudents.length > 10 ? eligibleStudents : students;

      const inscritos = pickRandom(poolSource, Math.min(ev.numInscritos, poolSource.length));
      const asistentes = pickRandom(inscritos, Math.min(ev.numAsistentes, inscritos.length));

      // Guardar el evento en la BD
      await pool.query(`
        INSERT INTO events (
          id, nombre, organizador, organizer_id, scenery, programs, cupos, horarioInicio, horarioFin, state, 
          formAssists, formInscriptions, assists, inscriptions, formConfig, category, is_recurrent, recurrence_config
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      `, [
        eventId,
        ev.nombre,
        ev.organizador,
        organizerId,
        JSON.stringify({ id: ev.scenery.id, name: ev.scenery.name }),
        JSON.stringify(ev.programs.map(p => p.id)),
        ev.cupos,
        startTime,
        endTime,
        'activo',
        JSON.stringify({ id: formAssistsId, name: 'Formulario de Control de Asistencia' }),
        JSON.stringify({ id: formInscriptionsId, name: 'Formulario de Inscripción Estándar' }),
        JSON.stringify(asistentes.map(toAssistRow)),
        JSON.stringify(inscritos.map(toAssistRow)),
        JSON.stringify({
          inscriptions: { enabled: true, startDate: startTime.toISOString(), endDate: endTime.toISOString() },
          assists: { enabled: true, startDate: startTime.toISOString(), endDate: endTime.toISOString() }
        }),
        ev.categoria,
        ev.isRecurrent ? 1 : 0,
        ev.isRecurrent ? JSON.stringify({ frequency: 'daily', total_phases: ev.fasesCount, start_date: startTime.toISOString(), end_date: endTime.toISOString() }) : null
      ]);

      // Guardar en participant_history para registros generales
      for (const p of inscritos) {
        const attended = asistentes.some(a => a.id === p.id);
        await pool.query(`
          INSERT INTO participant_history (id, participant_id, event_id, registered, attended, attendance_date)
          VALUES (?, ?, ?, ?, ?, ?)
        `, [
          uuidv4(),
          p.id,
          eventId,
          true,
          attended,
          attended ? new Date(startTime.getTime() + 15 * 60 * 1000) : null
        ]);
      }

      // Crear las fases del evento
      const phases = [];
      const phaseDuration = (endTime.getTime() - startTime.getTime()) / ev.fasesCount;
      for (let i = 0; i < ev.fasesCount; i++) {
        const phaseId = uuidv4();
        const phaseStart = new Date(startTime.getTime() + phaseDuration * i);
        const phaseEnd = new Date(startTime.getTime() + phaseDuration * (i + 1));
        const name = ev.isRecurrent ? `Fase ${i + 1}` : 'Fase Única';
        
        await pool.query(`
          INSERT INTO event_phases (id, event_id, name, start_date, end_date)
          VALUES (?, ?, ?, ?, ?)
        `, [phaseId, eventId, name, phaseStart, phaseEnd]);
        
        phases.push({ id: phaseId, start: phaseStart });
      }

      // Crear asistencias detalladas por cada fase
      for (const ph of phases) {
        // En recurrentes, la asistencia decae un poco en cada fase sucesiva (simulación realista)
        const phaseIdx = phases.indexOf(ph);
        const retentionRate = ev.isRecurrent ? (1 - phaseIdx * 0.15) : 1;
        const currentPhaseAsistentes = pickRandom(asistentes, Math.ceil(asistentes.length * retentionRate));

        for (const p of currentPhaseAsistentes) {
          // Asignar un rating realista (puntuación) de 1 a 5 con mayor inclinación a 4 y 5
          const rand = Math.random();
          const rating = rand < 0.1 ? 3 : (rand < 0.5 ? 4 : 5);

          await pool.query(`
            INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at, rating)
            VALUES (?, ?, ?, ?, ?, ?)
          `, [
            uuidv4(),
            p.id,
            ph.id,
            true,
            new Date(ph.start.getTime() + 10 * 60 * 1000),
            rating
          ]);
        }
      }
    }

    // Activar restricciones de claves foráneas
    await pool.query('SET FOREIGN_KEY_CHECKS = 1');

    console.log('== ¡Semillero de Simulación Completado de manera Exitosa! ==');
    process.exit(0);
  } catch (error) {
    console.error('Error durante la ejecución del semillero:', error);
    process.exit(1);
  }
}

main();
