import { pool } from './config.js';
import { v4 as uuidv4 } from 'uuid';

const migrate = async () => {
  try {
    console.log('Iniciando migración para Eventos por Fases...');

    // 1. Añadir columnas a tabla events si no existen
    const [columns] = await pool.query(`SHOW COLUMNS FROM events LIKE 'is_recurrent'`);
    if (columns.length === 0) {
      await pool.query(`
        ALTER TABLE events 
        ADD COLUMN is_recurrent BOOLEAN DEFAULT FALSE,
        ADD COLUMN recurrence_config JSON DEFAULT NULL
      `);
      console.log('Columnas is_recurrent y recurrence_config agregadas a events.');
    }

    // 2. Crear tabla event_phases
    await pool.query(`
      CREATE TABLE IF NOT EXISTS event_phases (
        id VARCHAR(255) PRIMARY KEY,
        event_id VARCHAR(255) NOT NULL,
        name VARCHAR(255) NOT NULL,
        start_date DATETIME NOT NULL,
        end_date DATETIME NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
      )
    `);
    console.log('Tabla event_phases verificada/creada.');

    // 3. Crear tabla phase_attendances
    await pool.query(`
      CREATE TABLE IF NOT EXISTS phase_attendances (
        id VARCHAR(255) PRIMARY KEY,
        participant_id VARCHAR(255) NOT NULL,
        phase_id VARCHAR(255) NOT NULL,
        attended BOOLEAN DEFAULT FALSE,
        registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        rating INT DEFAULT NULL,
        FOREIGN KEY (participant_id) REFERENCES participants(id) ON DELETE CASCADE,
        FOREIGN KEY (phase_id) REFERENCES event_phases(id) ON DELETE CASCADE,
        UNIQUE KEY unique_participant_phase (participant_id, phase_id)
      )
    `);
    console.log('Tabla phase_attendances verificada/creada.');

    // 3.1 Asegurar columna rating (compatibilidad con instalaciones previas)
    const [ratingCol] = await pool.query(`SHOW COLUMNS FROM phase_attendances LIKE 'rating'`);
    if (ratingCol.length === 0) {
      await pool.query(`ALTER TABLE phase_attendances ADD COLUMN rating INT DEFAULT NULL`);
      console.log('Columna rating agregada a phase_attendances.');
    }

    // 4. Migrar eventos existentes para que tengan al menos una Fase
    const [events] = await pool.query('SELECT id, nombre, horarioInicio, horarioFin FROM events');
    
    for (const event of events) {
      // Comprobar si ya tiene fases
      const [phases] = await pool.query('SELECT id FROM event_phases WHERE event_id = ?', [event.id]);
      if (phases.length === 0) {
        const phaseId = uuidv4();
        await pool.query(`
          INSERT INTO event_phases (id, event_id, name, start_date, end_date)
          VALUES (?, ?, ?, ?, ?)
        `, [phaseId, event.id, 'Fase Única', event.horarioInicio, event.horarioFin]);
        
        // Migrar asistencias de participant_history a phase_attendances
        const [history] = await pool.query('SELECT participant_id, attended, attendance_date FROM participant_history WHERE event_id = ?', [event.id]);
        
        for (const h of history) {
          try {
             await pool.query(`
                INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at)
                VALUES (?, ?, ?, ?, ?)
             `, [uuidv4(), h.participant_id, phaseId, h.attended, h.attendance_date || new Date()]);
          } catch(e) {
             // Ignorar si ya existe
          }
        }
      }
    }
    
    console.log('Migración de Eventos por Fases completada exitosamente.');
    process.exit(0);
  } catch (error) {
    console.error('Error durante la migración de Eventos por Fases:', error);
    process.exit(1);
  }
};

migrate();
