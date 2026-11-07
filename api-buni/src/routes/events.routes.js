import { Router } from 'express';
import { 
    GetEvents, GetEventById, CreateEvent, UpdateEvent, DeleteEvent, 
    UpdateEventForm, UpdateEventConfigForm,
    GetEventPhases, RegisterPhaseAttendance,
    GetPhaseStats, RatePhaseAttendance,
    GetOrganizerMetrics, GetEventStats,
    GetEligibleOrganizers
} from '../controllers/events.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';
import { createEventMiddleware, updateEventMiddleware, deleteEventMiddleware } from '../middleware/event.middleware.js';

const router = Router();

router.get('/', GetEvents);
router.get('/metrics/organizers', verifyToken, GetOrganizerMetrics);
router.get('/organizers/eligible', verifyToken, GetEligibleOrganizers);
router.get('/:id', GetEventById);
router.post('/', verifyToken, createEventMiddleware, CreateEvent);
router.put('/:id', verifyToken, updateEventMiddleware, UpdateEvent);
router.put('/:id/forms', verifyToken, updateEventMiddleware, UpdateEventForm);
router.put('/:id/form-config', verifyToken, updateEventMiddleware, UpdateEventConfigForm);
router.delete('/:id', verifyToken, deleteEventMiddleware, DeleteEvent);

// Métricas del evento (asistencia + satisfacción)
router.get('/:id/stats', verifyToken, GetEventStats);

// Fases y Asistencia por fase
router.get('/:id/phases', GetEventPhases);
router.get('/:id/phases/:phaseId/stats', verifyToken, GetPhaseStats);
router.post('/:id/phases/:phaseId/attendance', verifyToken, RegisterPhaseAttendance);
router.put('/:id/phases/:phaseId/rating', verifyToken, RatePhaseAttendance);

export default router;
