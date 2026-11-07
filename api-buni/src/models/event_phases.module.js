import { pool } from '../database/config.js';

export const getPhasesByEventId = async (eventId) => {
    try {
        const [phases] = await pool.query(`
            SELECT id, event_id, name, start_date, end_date, created_at
            FROM event_phases
            WHERE event_id = ?
            ORDER BY start_date ASC
        `, [eventId]);
        return phases;
    } catch (error) {
        console.error('Error en getPhasesByEventId:', error);
        throw error;
    }
};

export const createPhase = async (phaseData) => {
    try {
        const [result] = await pool.query('INSERT INTO event_phases SET ?', [phaseData]);
        return result;
    } catch (error) {
        console.error('Error en createPhase:', error);
        throw error;
    }
};

/**
 * Retorna estadísticas de una fase:
 *  - Total asistentes registrados
 *  - Promedio de rating (solo de quienes calificaron)
 *  - Número de calificaciones recibidas
 *  - Lista de asistentes con su rating individual
 */
export const getPhaseStats = async (phaseId) => {
    try {
        const [[summary]] = await pool.query(`
            SELECT
                COUNT(*)                              AS attendance_count,
                ROUND(AVG(rating), 2)                 AS avg_rating,
                COUNT(CASE WHEN rating IS NOT NULL THEN 1 END) AS rated_count
            FROM phase_attendances
            WHERE phase_id = ? AND attended = 1
        `, [phaseId]);

        const [attendees] = await pool.query(`
            SELECT
                pa.id,
                pa.participant_id,
                pa.attended,
                pa.rating,
                pa.registered_at,
                p.name  AS participant_name,
                p.code  AS participant_code,
                p.email AS participant_email
            FROM phase_attendances pa
            JOIN participants p ON p.id = pa.participant_id
            WHERE pa.phase_id = ? AND pa.attended = 1
            ORDER BY pa.registered_at DESC
        `, [phaseId]);

        return {
            attendance_count: Number(summary.attendance_count) || 0,
            avg_rating:       summary.avg_rating ? Number(summary.avg_rating) : null,
            rated_count:      Number(summary.rated_count) || 0,
            attendees
        };
    } catch (error) {
        console.error('Error en getPhaseStats:', error);
        throw error;
    }
};

/**
 * Actualiza el rating de un participante en una fase específica.
 * Solo se permite si el participante tiene un registro de asistencia (attended = 1).
 * Returns: { updated: boolean }
 */
export const ratePhaseAttendance = async (participantId, phaseId, rating) => {
    try {
        const [result] = await pool.query(`
            UPDATE phase_attendances
            SET rating = ?
            WHERE participant_id = ? AND phase_id = ? AND attended = 1
        `, [rating, participantId, phaseId]);
        return { updated: result.affectedRows > 0 };
    } catch (error) {
        console.error('Error en ratePhaseAttendance:', error);
        throw error;
    }
};

export class EventPhasesModule {
    static getPhasesByEventId    = getPhasesByEventId;
    static createPhase           = createPhase;
    static getPhaseStats         = getPhaseStats;
    static ratePhaseAttendance   = ratePhaseAttendance;
}
