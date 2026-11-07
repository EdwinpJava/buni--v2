import { pool } from './config.js';

const migrate = async () => {
  try {
    console.log('Iniciando migración para el módulo de Participantes (V2)...');

    // 1. Tabla de Participantes (Únicos)
    // Usamos el código o email como identificador natural para evitar duplicados
    await pool.query(`
      CREATE TABLE IF NOT EXISTS participants (
        id VARCHAR(255) PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        code VARCHAR(50) NOT NULL UNIQUE,
        email VARCHAR(255) NULL UNIQUE,
        type ENUM('estudiante', 'docente', 'externo', 'otro') DEFAULT 'estudiante',
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
      )
    `);
    console.log('Tabla participants verificada/creada.');

    // 2. Tabla de Historial de Participación (Registros y Asistencias)
    await pool.query(`
      CREATE TABLE IF NOT EXISTS participant_history (
        id VARCHAR(255) PRIMARY KEY,
        participant_id VARCHAR(255) NOT NULL,
        event_id VARCHAR(255) NOT NULL,
        registered BOOLEAN DEFAULT TRUE,
        attended BOOLEAN DEFAULT FALSE,
        registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        attendance_date TIMESTAMP NULL,
        FOREIGN KEY (participant_id) REFERENCES participants(id) ON DELETE CASCADE,
        FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE,
        UNIQUE KEY unique_participant_event (participant_id, event_id)
      )
    `);
    console.log('Tabla participant_history verificada/creada.');

    console.log('Migración V2 completada exitosamente.');
    process.exit(0);
  } catch (error) {
    console.error('Error durante la migración V2:', error);
    process.exit(1);
  }
};

migrate();
