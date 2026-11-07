import { pool } from '../database/config.js';
import { v4 as uuidv4 } from 'uuid';

export class ParticipantsModule {
    static async getParticipants(search = '', page = 1, limit = 10) {
        try {
            const offset = (page - 1) * limit;
            let whereClause = '';
            const params = [];

            if (search) {
                whereClause = ` WHERE p.name LIKE ? OR p.code LIKE ? OR p.email LIKE ?`;
                const searchParam = `%${search}%`;
                params.push(searchParam, searchParam, searchParam);
            }

            const countQuery = `SELECT COUNT(*) as total FROM participants p ${whereClause}`;
            const [countResult] = await pool.query(countQuery, params);
            const total = countResult[0].total;

            let query = `
                SELECT p.*, 
                (SELECT COUNT(*) FROM participant_history WHERE participant_id = p.id AND registered = 1) as total_registrations,
                (SELECT COUNT(*) FROM phase_attendances WHERE participant_id = p.id AND attended = 1) as total_attendances,
                (SELECT COUNT(*) FROM event_phases ep JOIN participant_history ph ON ep.event_id = ph.event_id WHERE ph.participant_id = p.id AND ph.registered = 1) as total_phases_available
                FROM participants p
                ${whereClause}
                ORDER BY p.created_at DESC
                LIMIT ? OFFSET ?
            `;
            
            params.push(Number(limit), Number(offset));

            const [result] = await pool.query(query, params);
            return {
                data: result,
                total,
                page: Number(page),
                limit: Number(limit),
                totalPages: Math.ceil(total / limit)
            };
        } catch (error) {
            console.error('Error en getParticipants:', error);
            throw error;
        }
    }

    static async getParticipantById(id) {
        try {
            const query = `
                SELECT p.*, 
                (SELECT COUNT(*) FROM participant_history WHERE participant_id = p.id AND registered = 1) as total_registrations,
                (SELECT COUNT(*) FROM phase_attendances WHERE participant_id = p.id AND attended = 1) as total_attendances,
                (SELECT COUNT(*) FROM event_phases ep JOIN participant_history ph ON ep.event_id = ph.event_id WHERE ph.participant_id = p.id AND ph.registered = 1) as total_phases_available
                FROM participants p
                WHERE p.id = ?
            `;
            const [result] = await pool.query(query, [id]);
            return result[0];
        } catch (error) {
            console.error('Error en getParticipantById:', error);
            throw error;
        }
    }

    static async getParticipantHistory(id) {
        try {
            const query = `
                SELECT pa.*, ep.name as phase_name, e.nombre as event_name, ep.start_date as event_date
                FROM phase_attendances pa
                JOIN event_phases ep ON pa.phase_id = ep.id
                JOIN events e ON ep.event_id = e.id
                WHERE pa.participant_id = ?
                ORDER BY ep.start_date DESC
            `;
            const [result] = await pool.query(query, [id]);
            return result;
        } catch (error) {
            console.error('Error en getParticipantHistory:', error);
            throw error;
        }
    }

    static async createParticipant(participant) {
        try {
            const [result] = await pool.query('INSERT INTO participants SET ?', [participant]);
            return result;
        } catch (error) {
            console.error('Error en createParticipant:', error);
            throw error;
        }
    }

    static async findParticipantByEmailOrCode(email, code) {
        try {
            const [result] = await pool.query('SELECT * FROM participants WHERE email = ? OR code = ?', [email, code]);
            return result[0];
        } catch (error) {
            console.error('Error en findParticipantByEmailOrCode:', error);
            throw error;
        }
    }

    static async upsertParticipation(history) {
        try {
            const query = `
                INSERT INTO participant_history (id, participant_id, event_id, registered, attended, attendance_date)
                VALUES (?, ?, ?, ?, ?, ?)
                ON DUPLICATE KEY UPDATE 
                registered = VALUES(registered),
                attended = VALUES(attended),
                attendance_date = VALUES(attendance_date)
            `;
            const [result] = await pool.query(query, [
                history.id, history.participant_id, history.event_id, 
                history.registered, history.attended, history.attendance_date
            ]);
            return result;
        } catch (error) {
            console.error('Error en upsertParticipation:', error);
            throw error;
        }
    }
}
