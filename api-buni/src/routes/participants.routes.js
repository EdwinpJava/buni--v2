import { Router } from 'express';
import { getParticipants, getParticipantById, syncParticipantsFromEvents } from '../controllers/participants.controller.js';
import { verifyToken } from '../middleware/auth.middleware.js';

const router = Router();

router.get('/', verifyToken, getParticipants);
router.get('/:id', verifyToken, getParticipantById);
router.post('/sync', verifyToken, syncParticipantsFromEvents);

export default router;
