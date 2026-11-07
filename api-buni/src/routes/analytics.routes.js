import { Router } from 'express';
import { verifyToken } from '../middleware/auth.middleware.js';
import { GetEventsReport, GetOrganizerEventsDrilldown, GetParticipationByProgram } from '../controllers/analytics.controller.js';

const router = Router();

// Participación académica: Carrera -> Semestre
router.get('/participation/programs', verifyToken, GetParticipationByProgram);

// Drill-down por organizador: eventos + fases + ratings
router.get('/organizers/:organizador/events', verifyToken, GetOrganizerEventsDrilldown);

// Reporte descargable (CSV) de eventos con estadísticas
// period: weekly | semiannual
router.get('/reports/events', verifyToken, GetEventsReport);

export default router;

