import { pool } from '../database/config.js';
import { Utils } from '../lib/Utils.js';
import { EventsModule } from '../models/events.module.js';

const normalizeObjKeys = (data) => {
    const normalized = {};
    Object.keys(data || {}).forEach(key => {
        normalized[key.trim().toLowerCase()] = data[key];
    });
    return normalized;
};

const extractCarreraSemestre = (assist) => {
    const n = normalizeObjKeys(assist || {});
    const carrera = n.carrera || n.programa || n.program || n.career || null;
    const semestreRaw = n.semestre || n.semester || null;

    let semestre = null;
    if (semestreRaw !== null && semestreRaw !== undefined && semestreRaw !== '') {
        const match = String(semestreRaw).match(/\d+/);
        if (match) semestre = Number(match[0]);
    }
    return { carrera, semestre };
};

export const GetParticipationByProgram = async (req, res) => {
    try {
        const [events] = await pool.query(`SELECT id, assists FROM events`);

        const programsMap = new Map();

        for (const event of events) {
            let assists = [];
            try {
                assists = typeof event.assists === 'string' ? JSON.parse(event.assists || '[]') : (event.assists || []);
            } catch {
                assists = [];
            }

            if (!Array.isArray(assists)) continue;

            for (const a of assists) {
                const { carrera, semestre } = extractCarreraSemestre(a);
                if (!carrera) continue;

                const participant = Utils.extractParticipantData(a);
                const participantKey = participant.code || participant.email;

                if (!programsMap.has(carrera)) {
                    programsMap.set(carrera, {
                        carrera,
                        total_attendances: 0,
                        participants: new Set(),
                        semesters: new Map(),
                    });
                }

                const p = programsMap.get(carrera);
                p.total_attendances += 1;
                if (participantKey) p.participants.add(String(participantKey));

                const semKey = semestre ?? 0; // 0 = no especificado
                if (!p.semesters.has(semKey)) {
                    p.semesters.set(semKey, {
                        semestre: semKey,
                        attendances: 0,
                        participants: new Set(),
                    });
                }
                const s = p.semesters.get(semKey);
                s.attendances += 1;
                if (participantKey) s.participants.add(String(participantKey));
            }
        }

        const programs = Array.from(programsMap.values()).map(p => ({
            carrera: p.carrera,
            total_participants: p.participants.size,
            total_attendances: p.total_attendances,
            semesters: Array.from(p.semesters.values())
                .map(s => ({
                    semestre: s.semestre,
                    participants: s.participants.size,
                    attendances: s.attendances,
                }))
                .sort((a, b) => a.semestre - b.semestre),
        }))
        // Ordenar de mayor a menor participación acumulada (asistencias registradas)
        .sort((a, b) => b.total_attendances - a.total_attendances);

        res.json(programs);
    } catch (error) {
        console.error('Error en GetParticipationByProgram:', error);
        res.status(500).json({ error: error.message });
    }
};

export const GetOrganizerEventsDrilldown = async (req, res) => {
    try {
        const organizador = decodeURIComponent(req.params.organizador);
        if (!organizador) return res.status(400).json({ error: 'organizador es requerido' });

        const [events] = await pool.query(`
            SELECT id, nombre, organizador,
                DATE_FORMAT(horarioInicio, '%Y-%m-%dT%H:%i:%s.000Z') as horarioInicio,
                DATE_FORMAT(horarioFin, '%Y-%m-%dT%H:%i:%s.000Z') as horarioFin
            FROM events
            WHERE organizador = ?
            ORDER BY horarioInicio DESC
        `, [organizador]);

        const enriched = [];
        for (const ev of events) {
            const stats = await EventsModule.getEventStats(ev.id);
            const [phases] = await pool.query(`
                SELECT
                    ep.id,
                    ep.name,
                    ep.start_date,
                    ep.end_date,
                    COUNT(CASE WHEN pa.attended = 1 THEN 1 END) AS attendance_count,
                    ROUND(AVG(CASE WHEN pa.attended = 1 AND pa.rating IS NOT NULL THEN pa.rating END), 2) AS avg_rating,
                    COUNT(CASE WHEN pa.attended = 1 AND pa.rating IS NOT NULL THEN 1 END) AS rated_count
                FROM event_phases ep
                LEFT JOIN phase_attendances pa ON pa.phase_id = ep.id
                WHERE ep.event_id = ?
                GROUP BY ep.id
                ORDER BY ep.start_date ASC
            `, [ev.id]);

            enriched.push({
                ...ev,
                stats,
                phases: phases.map(p => ({
                    ...p,
                    attendance_count: Number(p.attendance_count) || 0,
                    avg_rating: p.avg_rating !== null ? Number(p.avg_rating) : null,
                    rated_count: Number(p.rated_count) || 0,
                })),
            });
        }

        res.json(enriched);
    } catch (error) {
        console.error('Error en GetOrganizerEventsDrilldown:', error);
        res.status(500).json({ error: error.message });
    }
};

const toCsvCell = (value) => {
    if (value === null || value === undefined) return '';
    const s = String(value);
    // Escape CSV according to RFC4180-ish rules
    if (/[",\r\n]/.test(s)) return `"${s.replace(/"/g, '""')}"`;
    return s;
};

const rowsToCsv = (headers, rows) => {
    const lines = [];
    lines.push(headers.map(toCsvCell).join(','));
    for (const row of rows) {
        lines.push(headers.map(h => toCsvCell(row?.[h])).join(','));
    }
    return lines.join('\r\n');
};

const computePeriodRange = (period) => {
    const end = new Date();
    const start = new Date(end);
    if (period === 'weekly') {
        start.setDate(start.getDate() - 7);
    } else if (period === 'semiannual') {
        start.setMonth(start.getMonth() - 6);
    } else {
        const err = new Error('period inválido. Usa weekly o semiannual');
        err.statusCode = 400;
        throw err;
    }
    return { start, end };
};

export const GetEventsReport = async (req, res) => {
    try {
        const period = String(req.query.period || 'weekly');
        const format = String(req.query.format || 'csv').toLowerCase();

        if (format !== 'csv') {
            return res.status(400).json({ error: 'format inválido. Por ahora solo csv' });
        }

        const { start, end } = computePeriodRange(period);

        // Selecciona eventos cuyo inicio cae dentro del rango
        const [events] = await pool.query(
            `
            SELECT
                id,
                nombre,
                organizador,
                DATE_FORMAT(horarioInicio, '%Y-%m-%dT%H:%i:%s.000Z') as horarioInicio,
                DATE_FORMAT(horarioFin, '%Y-%m-%dT%H:%i:%s.000Z') as horarioFin
            FROM events
            WHERE horarioInicio >= ? AND horarioInicio <= ?
            ORDER BY horarioInicio DESC
            `,
            [start, end]
        );

        const reportRows = [];
        for (const ev of events) {
            const stats = await EventsModule.getEventStats(ev.id);
            reportRows.push({
                id: ev.id,
                nombre: ev.nombre,
                organizador: ev.organizador,
                horarioInicio: ev.horarioInicio,
                horarioFin: ev.horarioFin,
                total_registrations: stats.total_registrations,
                total_attendances: stats.total_attendances,
                attendance_pct: stats.attendance_pct,
                avg_rating: stats.avg_rating,
                rated_count: stats.rated_count,
            });
        }

        const headers = [
            'id',
            'nombre',
            'organizador',
            'horarioInicio',
            'horarioFin',
            'total_registrations',
            'total_attendances',
            'attendance_pct',
            'avg_rating',
            'rated_count',
        ];

        const csv = rowsToCsv(headers, reportRows);

        const filename = `buni_informe_eventos_${period}_${new Date().toISOString().slice(0, 10)}.csv`;
        res.setHeader('Content-Type', 'text/csv; charset=utf-8');
        res.setHeader('Content-Disposition', `attachment; filename="${filename}"`);
        res.status(200).send(csv);
    } catch (error) {
        const status = error.statusCode || 500;
        console.error('Error en GetEventsReport:', error);
        res.status(status).json({ error: error.message });
    }
};
