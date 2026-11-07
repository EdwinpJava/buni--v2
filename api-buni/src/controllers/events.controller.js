import { getEvents, getEventById, createEvent, updateEvent, deleteEvent, updateEventForm, updateEventConfigForm, getOrganizerMetrics, getEventStats } from '../services/events.service.js';
import { getEligibleOrganizers } from '../services/organizers.service.js';
import { isAdminActor } from '../lib/permissions.js';
import { createEventSchema, formatZodError } from '../schemas/createEvent.schema.js';
import { EventPhasesModule } from '../models/event_phases.module.js';
import { ParticipantsModule } from '../models/participants.module.js';
import { Utils } from '../lib/Utils.js';
import { v4 as uuidv4 } from 'uuid';

export const GetEvents = async (req, res) => {
    try {
        const events = await getEvents();
        res.json(events);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetEventById = async (req, res) => {
    try {
        const event = await getEventById(req.params.id);
        res.json(event);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetEligibleOrganizers = async (req, res) => {
    try {
        if (!isAdminActor(req.user)) {
            return res.status(403).json({ error: 'Solo administradores pueden listar organizadores' });
        }

        const organizers = await getEligibleOrganizers();
        res.json(organizers);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const CreateEvent = async (req, res) => {
    try {
        const eventData = { ...req.body };
        const isAdmin = isAdminActor(req.user);

        if (isAdmin && eventData.organizer_id) {
            const eligible = await getEligibleOrganizers();
            const organizer = eligible.find((u) => u.id === eventData.organizer_id);
            if (!organizer) {
                return res.status(400).json({ error: 'El organizador seleccionado no es válido o no tiene permiso para crear eventos' });
            }
            eventData.organizer_id = organizer.id;
            eventData.organizador = organizer.name;
        } else if (req.user?.id) {
            eventData.organizer_id = req.user.id;
            eventData.organizador = req.user.name || eventData.organizador;
        }

        const parsed = createEventSchema.safeParse(eventData);
        if (!parsed.success) {
            return res.status(400).json(formatZodError(parsed.error));
        }

        const event = await createEvent(parsed.data);
        res.status(201).json({ 
            message: 'Evento creado exitosamente',
            data: event
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const UpdateEvent = async (req, res) => {
    try {
        const event = await updateEvent(req.params.id, req.body);
        res.json({ 
            message: 'Evento actualizado exitosamente',
            data: event
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const UpdateEventForm = async (req, res) => {
    try {
        if (!req.params.id) {
            return res.status(400).json({ error: 'ID de evento requerido' });
        }

        const event = await updateEventForm(req.params.id, req.body);
        res.json({ 
            message: 'Formulario actualizado exitosamente',
            data: event
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const UpdateEventConfigForm = async (req, res) => {
    try {
        const event = await updateEventConfigForm(req.params.id, req.body);

        res.json({ 
            message: 'Configuración del formulario actualizada exitosamente',
            data: event
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const DeleteEvent = async (req, res) => {
    try {
        const event = await deleteEvent(req.params.id);
        res.json({ 
            message: 'Evento eliminado exitosamente',
            data: event
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetEventPhases = async (req, res) => {
    try {
        const phases = await EventPhasesModule.getPhasesByEventId(req.params.id);
        res.json(phases);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const RegisterPhaseAttendance = async (req, res) => {
    try {
        const { participantData, attended = true, rating, session_rating } = req.body;
        const phaseId = req.params.phaseId;
        const eventId = req.params.id;

        if (!participantData || (!participantData.email && !participantData.code)) {
            return res.status(400).json({ error: 'Faltan datos del participante' });
        }

        const ratingRaw = session_rating ?? rating;
        const ratingValue = ratingRaw === undefined || ratingRaw === null || ratingRaw === '' || Number(ratingRaw) === 0
            ? null
            : Number(ratingRaw);
        if (ratingValue !== null && (!Number.isFinite(ratingValue) || ratingValue < 1 || ratingValue > 5)) {
            return res.status(400).json({ error: 'La calificación debe estar entre 1 y 5' });
        }

        let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
        if (!participant) {
            const newId = uuidv4();
            await ParticipantsModule.createParticipant({
                id: newId,
                name: participantData.name || 'Desconocido',
                code: participantData.code || '',
                email: participantData.email || '',
                type: participantData.type || 'estudiante'
            });
            participant = { id: newId };
        }

        // Import pool locally to avoid circular dependency
        const { pool } = await import('../database/config.js');
        
        try {
            await pool.query(`
                INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at, rating)
                VALUES (?, ?, ?, ?, ?, ?)
                ON DUPLICATE KEY UPDATE 
                    attended = VALUES(attended), 
                    registered_at = VALUES(registered_at),
                    rating = COALESCE(VALUES(rating), rating)
            `, [uuidv4(), participant.id, phaseId, attended, new Date(), ratingValue]);
        } catch(e) {
            console.error('Error insertando phase_attendances', e);
        }

        res.json({ message: 'Asistencia registrada exitosamente' });
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetPhaseStats = async (req, res) => {
    try {
        const stats = await EventPhasesModule.getPhaseStats(req.params.phaseId);
        res.json(stats);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const RatePhaseAttendance = async (req, res) => {
    try {
        const { participant_id, rating } = req.body;
        const phaseId = req.params.phaseId;

        const ratingValue = Number(rating);
        if (!participant_id) return res.status(400).json({ error: 'participant_id es requerido' });
        if (!Number.isFinite(ratingValue) || ratingValue < 1 || ratingValue > 5) {
            return res.status(400).json({ error: 'La calificación debe estar entre 1 y 5' });
        }

        const result = await EventPhasesModule.ratePhaseAttendance(participant_id, phaseId, ratingValue);
        res.json(result);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetOrganizerMetrics = async (req, res) => {
    try {
        const rows = await getOrganizerMetrics();
        res.json(rows);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};

export const GetEventStats = async (req, res) => {
    try {
        const stats = await getEventStats(req.params.id);
        res.json(stats);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};
