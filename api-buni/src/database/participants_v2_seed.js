import { pool } from './config.js';
import { v4 as uuidv4 } from 'uuid';

const seed = async () => {
  try {
    console.log('Insertando datos de prueba para el módulo de Participantes (V2)...');

    const participantId = uuidv4();
    const eventId1 = uuidv4();
    const eventId2 = uuidv4();

    // 1. Crear un programa si no hay
    const [existingPrograms] = await pool.query('SELECT id FROM programs LIMIT 1');
    let programId = existingPrograms.length > 0 ? existingPrograms[0].id : null;
    
    if (!programId) {
      programId = uuidv4();
      await pool.query('INSERT INTO programs (id, name, state) VALUES (?, ?, ?)', [programId, 'Ingeniería de Sistemas', 'activo']);
    }

    // 2. Crear un participante único
    await pool.query(`
      INSERT INTO participants (id, name, code, email, type) 
      VALUES (?, ?, ?, ?, ?)
    `, [participantId, 'Juan Pérez', '2026001', 'juan.perez@universidad.edu.co', 'estudiante']);

    // 3. Crear eventos de prueba
    const events = [
      [eventId1, 'Conferencia de Ciberseguridad', 'Facultad de Ingeniería', '2026-06-01 09:00:00', '2026-06-01 12:00:00'],
      [eventId2, 'Taller de React Avanzado', 'Centro de Innovación', '2026-06-15 14:00:00', '2026-06-15 18:00:00']
    ];

    for (const event of events) {
      await pool.query(`
        INSERT INTO events (id, nombre, organizador, scenery, programs, cupos, horarioInicio, horarioFin, state, formAssists, formInscriptions, assists, inscriptions, formConfig) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      `, [
        event[0], event[1], event[2], JSON.stringify({}), JSON.stringify([programId]), '100', 
        event[3], event[4], 'activo', JSON.stringify({}), JSON.stringify({}), 
        JSON.stringify([]), JSON.stringify([]), JSON.stringify({})
      ]);
    }

    // 4. Historial: Registrado en ambos, asistió a uno
    await pool.query(`
      INSERT INTO participant_history (id, participant_id, event_id, registered, attended, attendance_date) 
      VALUES (?, ?, ?, ?, ?, ?)
    `, [uuidv4(), participantId, eventId1, true, true, '2026-06-01 09:10:00']);

    await pool.query(`
      INSERT INTO participant_history (id, participant_id, event_id, registered, attended) 
      VALUES (?, ?, ?, ?, ?)
    `, [uuidv4(), participantId, eventId2, true, false]);

    console.log('Datos de prueba V2 insertados exitosamente.');
    process.exit(0);
  } catch (error) {
    console.error('Error insertando datos de prueba V2:', error);
    process.exit(1);
  }
};

seed();
