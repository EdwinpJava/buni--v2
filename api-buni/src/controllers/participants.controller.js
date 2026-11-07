import { ParticipantsModule } from '../models/participants.module.js';
import { pool } from '../database/config.js';
import { v4 as uuidv4 } from 'uuid';
import { Utils } from '../lib/Utils.js';

export const getParticipants = async (req, res) => {
    try {
        const { search, page, limit } = req.query;
        const result = await ParticipantsModule.getParticipants(
            search, 
            parseInt(page) || 1, 
            parseInt(limit) || 10
        );
        res.json(result);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

export const getParticipantById = async (req, res) => {
    try {
        const { id } = req.params;
        const participant = await ParticipantsModule.getParticipantById(id);
        if (!participant) return res.status(404).json({ error: 'Participante no encontrado' });

        const history = await ParticipantsModule.getParticipantHistory(id);
        res.json({ ...participant, history });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

export const syncParticipantsFromEvents = async (req, res) => {
    try {
        console.log('Iniciando sincronización masiva de participantes...');
        
        // 1. Obtener todos los eventos
        const [events] = await pool.query('SELECT id, inscriptions, assists FROM events');
        
        let syncedCount = 0;

        for (const event of events) {
            let inscriptions = [];
            let assists = [];

            try {
                inscriptions = typeof event.inscriptions === 'string' ? JSON.parse(event.inscriptions || '[]') : (event.inscriptions || []);
            } catch (e) {
                console.error(`Error parseando inscripciones del evento ${event.id}:`, e.message);
                inscriptions = [];
            }

            try {
                assists = typeof event.assists === 'string' ? JSON.parse(event.assists || '[]') : (event.assists || []);
            } catch (e) {
                console.error(`Error parseando asistencias del evento ${event.id}:`, e.message);
                assists = [];
            }

            // Combinar inscritos y asistentes para asegurar que todos estén en la tabla participants
            const allPeopleMap = new Map();

            const processPerson = (person) => {
                const data = Utils.extractParticipantData(person);
                if (data.email || data.code) {
                    const key = data.email || data.code;
                    if (!allPeopleMap.has(key)) {
                        allPeopleMap.set(key, data);
                    }
                }
            };

            inscriptions.forEach(processPerson);
            assists.forEach(processPerson);

            for (const [key, participantData] of allPeopleMap) {
                // 2. Buscar o crear participante
                let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                
                if (!participant) {
                    const newId = uuidv4();
                    try {
                        await ParticipantsModule.createParticipant({
                            id: newId,
                            name: participantData.name,
                            code: participantData.code,
                            email: participantData.email,
                            type: participantData.type
                        });
                        participant = { id: newId };
                    } catch (createErr) {
                        participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                        if (!participant) {
                            console.error(`Error creando participante ${key}:`, createErr.message);
                            continue;
                        }
                    }
                } else if (participant.name === 'Sin nombre' && participantData.name !== 'Sin nombre') {
                    // Si ya existe pero no tenía nombre, se lo actualizamos
                    try {
                        await pool.query('UPDATE participants SET name = ? WHERE id = ?', [participantData.name, participant.id]);
                        participant.name = participantData.name;
                    } catch (updateErr) {
                        console.error(`Error actualizando nombre de participante ${participant.id}:`, updateErr.message);
                    }
                }

                // 3. Determinar estado en este evento
                const isRegistered = !!inscriptions.find(p => {
                    const d = Utils.extractParticipantData(p);
                    return d.email === participantData.email || d.code === participantData.code;
                });
                const isAttended = !!assists.find(p => {
                    const d = Utils.extractParticipantData(p);
                    return d.email === participantData.email || d.code === participantData.code;
                });

                // 4. Upsert en el historial
                try {
                    await ParticipantsModule.upsertParticipation({
                        id: uuidv4(),
                        participant_id: participant.id,
                        event_id: event.id,
                        registered: isRegistered ? 1 : 0,
                        attended: isAttended ? 1 : 0,
                        attendance_date: isAttended ? new Date() : null
                    });
                    syncedCount++;
                } catch (historyErr) {
                    console.error(`Error guardando historial para ${key} en evento ${event.id}:`, historyErr.message);
                }
            }
        }

        console.log(`Sincronización completada: ${syncedCount} registros procesados.`);
        res.json({ 
            success: true, 
            message: `Sincronización completada. Se procesaron ${syncedCount} registros de participación.` 
        });
    } catch (error) {
        console.error('Error en syncParticipantsFromEvents:', error);
        res.status(500).json({ error: error.message });
    }
};
