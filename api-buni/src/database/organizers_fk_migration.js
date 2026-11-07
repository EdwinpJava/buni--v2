import { pool } from './config.js';

const migrate = async () => {
    let connection;
    try {
        console.log('Iniciando migración de Clave Foránea para Organizadores...');
        connection = await pool.getConnection();

        // 1. Limpiar datos de prueba
        console.log('Vaciando tablas relacionadas a eventos...');
        await connection.query('SET FOREIGN_KEY_CHECKS = 0;');
        await connection.query('TRUNCATE TABLE phase_attendances;');
        await connection.query('TRUNCATE TABLE event_phases;');
        await connection.query('TRUNCATE TABLE events;');
        await connection.query('SET FOREIGN_KEY_CHECKS = 1;');
        console.log('Tablas limpiadas exitosamente.');

        // 2. Añadir columna organizer_id si no existe
        const [columns] = await connection.query(`SHOW COLUMNS FROM events LIKE 'organizer_id'`);
        if (columns.length === 0) {
            console.log('Agregando columna organizer_id y FK a events...');
            await connection.query(`
                ALTER TABLE events 
                ADD COLUMN organizer_id VARCHAR(255) NOT NULL,
                ADD CONSTRAINT fk_events_organizer FOREIGN KEY (organizer_id) REFERENCES users(id) ON DELETE CASCADE
            `);
            console.log('Columna y clave foránea agregadas exitosamente.');
        } else {
            console.log('La columna organizer_id ya existe en la tabla events.');
        }

        console.log('Migración completada exitosamente.');
        process.exit(0);
    } catch (error) {
        console.error('Error durante la migración:', error);
        process.exit(1);
    } finally {
        if (connection) connection.release();
    }
};

migrate();
