import { pool } from '../database/config.js';

const getEvents = async () => {
    try {
        const [events] = await pool.query(`
            SELECT 
                id, 
                nombre, 
                organizador,
                organizer_id,
                scenery, 
            programs, 
            cupos, 
            DATE_FORMAT(horarioInicio, '%Y-%m-%dT%H:%i:%s.000Z') as horarioInicio,
            DATE_FORMAT(horarioFin, '%Y-%m-%dT%H:%i:%s.000Z') as horarioFin,
            state, 
            formAssists, 
            formInscriptions, 
            assists, 
            inscriptions,
            formConfig,
            is_recurrent,
            recurrence_config
        FROM events
    `);
        return events;
    } catch (error) {
        console.error('Error en getEvents:', error);
        throw error;
    }
};

const getEventById = async (id) => {
    try {
        const [event] = await pool.query(`
            SELECT 
                id, 
                nombre, 
                organizador,
                organizer_id,
                scenery, 
                programs, 
            cupos, 
            DATE_FORMAT(horarioInicio, '%Y-%m-%dT%H:%i:%s.000Z') as horarioInicio,
            DATE_FORMAT(horarioFin, '%Y-%m-%dT%H:%i:%s.000Z') as horarioFin,
            state, 
            formAssists, 
            formInscriptions, 
            assists, 
            inscriptions,
            formConfig,
            is_recurrent,
            recurrence_config
        FROM events
        WHERE id = ?
    `, [id]);
        return event[0];
    } catch (error) {
        console.error('Error en getEventById:', error);
        throw error;
    }
};

const getEventConfigFormById = async (id) => {
    try {
        const [event] = await pool.query(`
            SELECT 
                id, 
                formConfig
            FROM events
            WHERE id = ?
        `, [id]);
        return event[0];
    } catch (error) {
        console.error('Error en getEventConfigFormById:', error);
        throw error;
    }
};

const createEvent = async (event) => {
    try {
        const [result] = await pool.query('INSERT INTO events SET ?', [event]);
        return result;
    } catch (error) {
        console.error('Error en createEvent:', error);
        throw error;
    }
};

const updateEvent = async (id, event) => {
    try {
        const [result] = await pool.query('UPDATE events SET ? WHERE id = ?', [event, id]);
        return result;
    } catch (error) {
        console.error('Error en updateEvent:', error);
        throw error;
    }
};

const updateEventForm = async (id, formData) => {
    try {
        const [result] = await pool.query('UPDATE events SET inscriptions = ?, assists = ? WHERE id = ?', [formData.inscriptions, formData.assists, id]);
        return result;
    } catch (error) {
        console.error('Error en updateEventForm:', error);
        throw error;
    }
};

const updateEventConfigForm = async (id, configForm) => {
    try {
        const [result] = await pool.query('UPDATE events SET formConfig = ? WHERE id = ?', [configForm, id]);
        return result;
    } catch (error) {
        console.error('Error en updateEventConfigForm:', error);
        throw error;
    }
};

const deleteEvent = async (id) => {
    try {
        const [result] = await pool.query('DELETE FROM events WHERE id = ?', [id]);
        return result;
    } catch (error) {
        console.error('Error en deleteEvent:', error);
        throw error;
    }
};

/**
 * Retorna métricas del evento:
 *  - total_registrations: inscritos (participant_history.registered = 1)
 *  - total_attendances  : asistencias (participant_history.attended = 1)
 *  - attendance_pct     : porcentaje de asistencia (attendances / registrations)
 *  - avg_rating         : promedio global de satisfacción (phase_attendances.rating)
 *  - rated_count        : número total de calificaciones recibidas
 */
const getEventStats = async (eventId) => {
    try {
        const [[row]] = await pool.query(`
            SELECT
                (SELECT JSON_LENGTH(inscriptions) FROM events WHERE id = ?) AS total_registrations,
                (
                    SELECT COUNT(*) 
                    FROM event_phases ep
                    LEFT JOIN phase_attendances pa ON pa.phase_id = ep.id
                    WHERE ep.event_id = ? AND pa.attended = 1
                ) AS total_attendances,
                (
                    SELECT ROUND(AVG(pa.rating), 2)
                    FROM event_phases ep
                    LEFT JOIN phase_attendances pa ON pa.phase_id = ep.id
                    WHERE ep.event_id = ?
                      AND pa.attended = 1
                      AND pa.rating IS NOT NULL
                ) AS avg_rating,
                (
                    SELECT COUNT(*)
                    FROM event_phases ep
                    LEFT JOIN phase_attendances pa ON pa.phase_id = ep.id
                    WHERE ep.event_id = ?
                      AND pa.attended = 1
                      AND pa.rating IS NOT NULL
                ) AS rated_count
        `, [eventId, eventId, eventId, eventId]);

        const total_registrations = Number(row.total_registrations) || 0;
        const total_attendances = Number(row.total_attendances) || 0;
        const attendance_pct = total_registrations === 0
            ? 100.0
            : parseFloat(((total_attendances / total_registrations) * 100).toFixed(2));

        return {
            total_registrations,
            total_attendances,
            attendance_pct,
            avg_rating: row.avg_rating !== null ? Number(row.avg_rating) : null,
            rated_count: Number(row.rated_count) || 0,
        };
    } catch (error) {
        console.error('Error en getEventStats:', error);
        throw error;
    }
};

/**
 * Retorna métricas de calidad agrupadas por organizador:
 *  - total_events     : número de eventos que ha organizado
 *  - total_attendances: total de asistencias registradas en sus eventos
 *  - avg_rating       : promedio global de valoraciones de sus fases
 *  - rated_count      : número total de valoraciones recibidas
 */
const getOrganizerMetrics = async () => {
    try {
        const [rows] = await pool.query(`
            SELECT
                e.organizador,
                COUNT(DISTINCT e.id)                                        AS total_events,
                COUNT(CASE WHEN pa.attended = 1 THEN 1 END)                 AS total_attendances,
                ROUND(AVG(CASE WHEN pa.attended = 1 AND pa.rating IS NOT NULL THEN pa.rating END), 2) AS avg_rating,
                COUNT(CASE WHEN pa.attended = 1 AND pa.rating IS NOT NULL THEN 1 END)                AS rated_count
            FROM events e
            LEFT JOIN event_phases ep      ON ep.event_id = e.id
            LEFT JOIN phase_attendances pa ON pa.phase_id = ep.id
            GROUP BY e.organizador
            ORDER BY avg_rating DESC, total_attendances DESC
        `);
        return rows.map(r => ({
            ...r,
            total_events:      Number(r.total_events),
            total_attendances: Number(r.total_attendances),
            avg_rating:        r.avg_rating !== null ? Number(r.avg_rating) : null,
            rated_count:       Number(r.rated_count),
        }));
    } catch (error) {
        console.error('Error en getOrganizerMetrics:', error);
        throw error;
    }
};

export class EventsModule {
    static getEvents             = getEvents;
    static getEventById          = getEventById;
    static getEventConfigFormById = getEventConfigFormById;
    static createEvent           = createEvent;
    static updateEvent           = updateEvent;
    static deleteEvent           = deleteEvent;
    static updateEventForm       = updateEventForm;
    static updateEventConfigForm = updateEventConfigForm;
    static getEventStats         = getEventStats;
    static getOrganizerMetrics   = getOrganizerMetrics;
}
