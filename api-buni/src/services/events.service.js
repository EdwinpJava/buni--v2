import { EventsModule } from '../models/events.module.js';
import { Utils } from '../lib/Utils.js';
import { SceneryModule } from '../models/scenery.module.js';
import { ProgramsModule } from '../models/programs.module.js';
import { FormsModule } from '../models/forms.module.js';
import { ParticipantsModule } from '../models/participants.module.js';
import { EventPhasesModule } from '../models/event_phases.module.js';
import { v4 as uuidv4 } from 'uuid';

export const getEvents = async () => {
    try {
        const events = await EventsModule.getEvents();

        const eventsData = events.map(event => {
            return {
                ...event,
                horarioInicio: event.horarioInicio.split('.')[0],
                horarioFin: event.horarioFin.split('.')[0],
                scenery: typeof event.scenery === 'string' ? JSON.parse(event.scenery) : event.scenery,
                programs: typeof event.programs === 'string' ? JSON.parse(event.programs) : event.programs,
                formAssists: typeof event.formAssists === 'string' ? JSON.parse(event.formAssists) : event.formAssists,
                formInscriptions: typeof event.formInscriptions === 'string' ? JSON.parse(event.formInscriptions) : event.formInscriptions,
                assists: typeof event.assists === 'string' ? JSON.parse(event.assists) : event.assists,
                inscriptions: typeof event.inscriptions === 'string' ? JSON.parse(event.inscriptions) : event.inscriptions,
                formConfig: typeof event.formConfig === 'string' ? JSON.parse(event.formConfig) : event.formConfig,
                is_recurrent: !!event.is_recurrent,
                recurrence_config: typeof event.recurrence_config === 'string' && event.recurrence_config ? JSON.parse(event.recurrence_config) : event.recurrence_config
            };
        });

        return eventsData;
    } catch (error) {
        console.error('Error en getEvents:', error);
        throw new Error('Error al obtener los eventos de la base de datos');
    }
};

export const getEventById = async (id) => {
    try {
        if (!id) {
            throw new Error('El ID del evento es requerido');
        }

        const event = await EventsModule.getEventById(id);

        if (!event) {
            throw new Error('Evento no encontrado');
        }

        return {
            ...event,
            horarioInicio: event.horarioInicio.split('.')[0],
            horarioFin: event.horarioFin.split('.')[0],
            scenery: typeof event.scenery === 'string' ? JSON.parse(event.scenery) : event.scenery,
            programs: typeof event.programs === 'string' ? JSON.parse(event.programs) : event.programs,
            formAssists: typeof event.formAssists === 'string' ? JSON.parse(event.formAssists) : event.formAssists,
            formInscriptions: typeof event.formInscriptions === 'string' ? JSON.parse(event.formInscriptions) : event.formInscriptions,
            assists: typeof event.assists === 'string' ? JSON.parse(event.assists) : event.assists,
            inscriptions: typeof event.inscriptions === 'string' ? JSON.parse(event.inscriptions) : event.inscriptions,
            formConfig: typeof event.formConfig === 'string' ? JSON.parse(event.formConfig) : event.formConfig,
            is_recurrent: !!event.is_recurrent,
            recurrence_config: typeof event.recurrence_config === 'string' && event.recurrence_config ? JSON.parse(event.recurrence_config) : event.recurrence_config
        };
    } catch (error) {
        console.error('Error en getEventById:', error);
        if (error.message.includes('requerido') || error.message.includes('no encontrado')) {
            throw error;
        }
        throw new Error('Error al obtener el evento de la base de datos');
    }
};

export const createEvent = async (eventData) => {
    try {
        const {
            nombre,
            organizador,
            organizer_id,
            scenery,
            programs,
            cupos,
            horarioInicio,
            horarioFin,
            state,
            formAssists,
            formInscriptions,
            assists,
            inscriptions,
            formConfig,
            is_recurrent = false,
            recurrence_config = null
        } = eventData;

        if (!nombre || !organizador || !organizer_id || !scenery || !programs || !cupos || !horarioInicio || !horarioFin || state === undefined) {
            console.log('Campos faltantes en createEvent:', {
                nombre: !!nombre,
                organizador: !!organizador,
                organizer_id: !!organizer_id,
                scenery: !!scenery,
                programs: !!programs,
                cupos: !!cupos,
                horarioInicio: !!horarioInicio,
                horarioFin: !!horarioFin,
                state: state !== undefined
            });
            throw new Error('Todos los campos son requeridos');
        }

        if (scenery.id == -1) {
            const scenery_module = await SceneryModule.getSceneries();
            const scenery_selected = scenery_module[0];
            scenery.id = scenery_selected.id;
        }

        if (programs.id == -1) {
            const programs_module = await ProgramsModule.getPrograms();
            const program_selected = programs_module[0];
            programs.id = program_selected.id;
        }

        if (formAssists.id == -1) {
            const formAssists_module = await FormsModule.getForms();
            const formAssists_selected = formAssists_module[0];
            formAssists.id = formAssists_selected.id;
        }

        if (formInscriptions.id == -1) {
            const formInscriptions_module = await FormsModule.getForms();
            const formInscriptions_selected = formInscriptions_module[0];
            formInscriptions.id = formInscriptions_selected.id;
        }

        const existingScenery = await SceneryModule.getSceneryById(scenery.id);
        if (!existingScenery) {
            throw new Error('El escenario especificado no existe');
        }

        const existingProgram = await ProgramsModule.getProgramById(programs.id);
        if (!existingProgram) {
            throw new Error('El programa especificado no existe');
        }

        const existingFormAssists = await FormsModule.getFormById(formAssists.id);
        if (!existingFormAssists) {
            throw new Error('El formulario de asistencia especificado no existe');
        }

        const existingFormInscriptions = await FormsModule.getFormById(formInscriptions.id);
        if (!existingFormInscriptions) {
            throw new Error('El formulario de inscripción especificado no existe');
        }

        const payload = {
            id: Utils.generateUUID(),
            nombre,
            organizador,
            organizer_id,
            scenery: JSON.stringify(scenery),
            programs: JSON.stringify(programs),
            cupos,
            horarioInicio,
            horarioFin,
            state,
            formAssists: JSON.stringify(formAssists || []),
            formInscriptions: JSON.stringify(formInscriptions || []),
            assists: JSON.stringify(assists || []),
            inscriptions: JSON.stringify(inscriptions || []),
            formConfig: JSON.stringify(formConfig || {}),
            is_recurrent,
            recurrence_config: recurrence_config ? JSON.stringify(recurrence_config) : null
        }

        const result = await EventsModule.createEvent(payload);

        if (result.affectedRows === 0) {
            throw new Error('Evento no creado');
        }

        // Crear Fases automáticamente
        try {
            if (is_recurrent && recurrence_config) {
                const customPhases = recurrence_config.custom_phases;
                if (Array.isArray(customPhases) && customPhases.length > 0) {
                    // Usar fases editadas manualmente por el usuario
                    for (const phase of customPhases) {
                        await EventPhasesModule.createPhase({
                            id: uuidv4(),
                            event_id: payload.id,
                            name: phase.name || 'Fase',
                            start_date: new Date(phase.start_date),
                            end_date: new Date(phase.end_date)
                        });
                    }
                } else {
                    // Auto-generar fases distribuidas uniformemente
                    const totalPhases = recurrence_config.total_phases || 1;
                    const eventStart = new Date(horarioInicio);
                    const eventEnd = new Date(horarioFin);
                    const diffTime = Math.abs(eventEnd - eventStart);
                    const phaseDuration = diffTime / totalPhases;

                    for (let i = 0; i < totalPhases; i++) {
                        const phaseStart = new Date(eventStart.getTime() + (phaseDuration * i));
                        const phaseEnd = new Date(eventStart.getTime() + (phaseDuration * (i + 1)));
                        await EventPhasesModule.createPhase({
                            id: uuidv4(),
                            event_id: payload.id,
                            name: `Fase ${i + 1}`,
                            start_date: phaseStart,
                            end_date: phaseEnd
                        });
                    }
                }
            } else {
                // Evento simple → Fase Única
                await EventPhasesModule.createPhase({
                    id: uuidv4(),
                    event_id: payload.id,
                    name: 'Fase Única',
                    start_date: new Date(horarioInicio),
                    end_date: new Date(horarioFin)
                });
            }
        } catch (phaseErr) {
            console.error('Error creando fases para evento:', phaseErr);
        }

        // Sincronizar participantes si vienen en la creación
        if ((inscriptions && inscriptions.length > 0) || (assists && assists.length > 0)) {
            try {
                // Podemos reutilizar la lógica de sincronización o simplemente esperar a que el usuario 
                // use el botón de sincronización, pero por proactividad lo haremos aquí.
                const allPeople = [...(inscriptions || [])];
                (assists || []).forEach(asistente => {
                    const dAsistente = Utils.extractParticipantData(asistente);
                    if (!allPeople.find(p => {
                        const d = Utils.extractParticipantData(p);
                        return d.email === dAsistente.email || d.code === dAsistente.code;
                    })) {
                        allPeople.push(asistente);
                    }
                });

                for (const person of allPeople) {
                    const participantData = Utils.extractParticipantData(person);
                    if (!participantData.email && !participantData.code) continue;

                    let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                    if (!participant) {
                        const newId = uuidv4();
                        await ParticipantsModule.createParticipant({
                            id: newId,
                            name: participantData.name,
                            code: participantData.code,
                            email: participantData.email,
                            type: participantData.type
                        });
                        participant = { id: newId };
                    }

                    const isRegistered = !!(inscriptions || []).find(p => {
                        const d = Utils.extractParticipantData(p);
                        return d.email === participantData.email || d.code === participantData.code;
                    });
                    const isAttended = !!(assists || []).find(p => {
                        const d = Utils.extractParticipantData(p);
                        return d.email === participantData.email || d.code === participantData.code;
                    });

                    await ParticipantsModule.upsertParticipation({
                        id: uuidv4(),
                        participant_id: participant.id,
                        event_id: payload.id,
                        registered: isRegistered ? 1 : 0,
                        attended: isAttended ? 1 : 0,
                        attendance_date: isAttended ? new Date() : null
                    });
                }
            } catch (syncErr) {
                console.error('Error sincronizando participantes en createEvent:', syncErr);
            }
        }

        const eventConfigForm = await EventsModule.getEventConfigFormById(payload.id);

        return {
            id: payload.id,
            ...payload,
            scenery: typeof payload.scenery === 'string' ? JSON.parse(payload.scenery) : payload.scenery,
            programs: typeof payload.programs === 'string' ? JSON.parse(payload.programs) : payload.programs,
            formAssists: typeof payload.formAssists === 'string' ? JSON.parse(payload.formAssists) : payload.formAssists,
            formInscriptions: typeof payload.formInscriptions === 'string' ? JSON.parse(payload.formInscriptions) : payload.formInscriptions,
            assists: typeof payload.assists === 'string' ? JSON.parse(payload.assists) : payload.assists,
            inscriptions: typeof payload.inscriptions === 'string' ? JSON.parse(payload.inscriptions) : payload.inscriptions,
            formConfig: typeof eventConfigForm.formConfig === 'string' ? JSON.parse(eventConfigForm.formConfig) : eventConfigForm.formConfig,
            is_recurrent: payload.is_recurrent,
            recurrence_config: typeof payload.recurrence_config === 'string' && payload.recurrence_config ? JSON.parse(payload.recurrence_config) : payload.recurrence_config
        };
    } catch (error) {
        console.error('Error en createEvent:', error);
        throw error;
    }
};

export const updateEvent = async (id, eventData) => {
    try {
        const {
            nombre,
            organizador,
            organizer_id,
            scenery,
            programs,
            cupos,
            horarioInicio,
            horarioFin,
            state,
            formAssists,
            formInscriptions,
            assists,
            inscriptions,
            formConfig,
            is_recurrent,
            recurrence_config
        } = eventData;

        if (!nombre || !organizador || !scenery || !programs || !cupos || !horarioInicio || !horarioFin || state === undefined) {
            throw new Error('Todos los campos son requeridos');
        }

        const payload = {
            nombre,
            organizador,
            ...(organizer_id ? { organizer_id } : {}),
            scenery: JSON.stringify(scenery),
            programs: JSON.stringify(programs),
            cupos,
            horarioInicio,
            horarioFin,
            state,
            formAssists: JSON.stringify(formAssists || []),
            formInscriptions: JSON.stringify(formInscriptions || []),
            assists: JSON.stringify(assists || []),
            inscriptions: JSON.stringify(inscriptions || []),
            formConfig: JSON.stringify(formConfig || {}),
            is_recurrent: is_recurrent !== undefined ? is_recurrent : false,
            recurrence_config: recurrence_config ? JSON.stringify(recurrence_config) : null
        }

        const result = await EventsModule.updateEvent(id, payload);

        if (result.affectedRows === 0) {
            throw new Error('Evento no encontrado');
        }

        // Sincronizar participantes tras actualización manual de listas
        try {
            const allPeople = [...(inscriptions || [])];
            (assists || []).forEach(asistente => {
                const dAsistente = Utils.extractParticipantData(asistente);
                if (!allPeople.find(p => {
                    const d = Utils.extractParticipantData(p);
                    return d.email === dAsistente.email || d.code === dAsistente.code;
                })) {
                    allPeople.push(asistente);
                }
            });

            for (const person of allPeople) {
                const participantData = Utils.extractParticipantData(person);
                if (!participantData.email && !participantData.code) continue;

                let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                if (!participant) {
                    const newId = uuidv4();
                    await ParticipantsModule.createParticipant({
                        id: newId,
                        name: participantData.name,
                        code: participantData.code,
                        email: participantData.email,
                        type: participantData.type
                    });
                    participant = { id: newId };
                }

                const isRegistered = !!(inscriptions || []).find(p => {
                    const d = Utils.extractParticipantData(p);
                    return d.email === participantData.email || d.code === participantData.code;
                });
                const isAttended = !!(assists || []).find(p => {
                    const d = Utils.extractParticipantData(p);
                    return d.email === participantData.email || d.code === participantData.code;
                });

                await ParticipantsModule.upsertParticipation({
                    id: uuidv4(),
                    participant_id: participant.id,
                    event_id: id,
                    registered: isRegistered ? 1 : 0,
                    attended: isAttended ? 1 : 0,
                    attendance_date: isAttended ? new Date() : null
                });
            }
        } catch (syncErr) {
            console.error('Error sincronizando participantes en updateEvent:', syncErr);
        }

        return true;
    } catch (error) {
        console.error('Error en updateEvent:', error);
        if (error.message.includes('requeridos') || error.message.includes('no encontrado')) {
            throw error;
        }
        throw new Error('Error al actualizar el evento en la base de datos');
    }
};

export const updateEventForm = async (id, formData) => {
    try {
        if (!id || !formData) {
            throw new Error('Los campos formulario son requeridos');
        }

        const event = await EventsModule.getEventById(id);

        if (!event) {
            throw new Error('Evento no encontrado');
        }

        // session_rating: calificación (1-5) de la fase/sesión (evita colisión con campos del formulario)
        const { typeForm, phaseId, session_rating, ...rest } = formData;
        const participantData = Utils.extractParticipantData(rest);
        const ratingValueRaw = session_rating;
        const ratingValue = ratingValueRaw === undefined || ratingValueRaw === null || ratingValueRaw === '' || Number(ratingValueRaw) === 0
            ? null
            : Number(ratingValueRaw);
        if (ratingValue !== null && (!Number.isFinite(ratingValue) || ratingValue < 1 || ratingValue > 5)) {
            throw new Error('La calificación debe estar entre 1 y 5');
        }

        if (typeForm === "inscriptions") {
            const inscriptions = typeof event.inscriptions === "string" ? JSON.parse(event.inscriptions) : event.inscriptions

            const maxCupos = Number(event.cupos);
            const currentCupos = inscriptions.length;

            if (maxCupos !== -1 && currentCupos >= maxCupos) {
                throw new Error('No hay cupos disponibles');
            }

            event.inscriptions = [...inscriptions, rest]

            // Sincronizar con la tabla de participantes
            try {
                if (participantData.email || participantData.code) {
                    let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                    if (!participant) {
                        const newId = uuidv4();
                        await ParticipantsModule.createParticipant({
                            id: newId,
                            name: participantData.name,
                            code: participantData.code,
                            email: participantData.email,
                            type: participantData.type
                        });
                        participant = { id: newId };
                    }
                    await ParticipantsModule.upsertParticipation({
                        id: uuidv4(),
                        participant_id: participant.id,
                        event_id: id,
                        registered: 1,
                        attended: 0
                    });
                }
            } catch (syncErr) {
                console.error('Error sincronizando participante (inscripción):', syncErr);
            }
        }

        if (typeForm === "assists") {
            const assists = typeof event.assists === "string" ? JSON.parse(event.assists) : event.assists
            event.assists = [...assists, rest]

            // Sincronizar con la tabla de participantes
            try {
                if (participantData.email || participantData.code) {
                    let participant = await ParticipantsModule.findParticipantByEmailOrCode(participantData.email, participantData.code);
                    if (!participant) {
                        const newId = uuidv4();
                        await ParticipantsModule.createParticipant({
                            id: newId,
                            name: participantData.name,
                            code: participantData.code,
                            email: participantData.email,
                            type: participantData.type
                        });
                        participant = { id: newId };
                    }
                    await ParticipantsModule.upsertParticipation({
                        id: uuidv4(),
                        participant_id: participant.id,
                        event_id: id,
                        registered: 1,
                        attended: 1,
                        attendance_date: new Date()
                    });

                    // Si viene phaseId, registrar asistencia en phase_attendances
                    if (phaseId) {
                        try {
                            const { pool } = await import('../database/config.js');
                            await pool.query(`
                                INSERT INTO phase_attendances (id, participant_id, phase_id, attended, registered_at, rating)
                                VALUES (?, ?, ?, 1, ?, ?)
                                ON DUPLICATE KEY UPDATE 
                                    attended = 1, 
                                    registered_at = VALUES(registered_at),
                                    rating = COALESCE(VALUES(rating), rating)
                            `, [uuidv4(), participant.id, phaseId, new Date(), ratingValue]);
                        } catch (phaseErr) {
                            console.error('Error registrando asistencia en phase_attendances:', phaseErr);
                        }
                    }
                }
            } catch (syncErr) {
                console.error('Error sincronizando participante (asistencia):', syncErr);
            }
        }

        const inscriptionsFormatted = typeof event.inscriptions === "object" ? JSON.stringify(event.inscriptions) : event.inscriptions
        const assistsFormatted = typeof event.assists === "object" ? JSON.stringify(event.assists) : event.assists

        const payload = {
            inscriptions: inscriptionsFormatted,
            assists: assistsFormatted
        }

        const result = await EventsModule.updateEventForm(id, payload)

        if (result.affectedRows === 0) {
            throw new Error('Evento no encontrado');
        }

        return true;
    } catch (error) {
        console.error('Error en updateEventForm:', error);
        throw error;
    }
};

export const getOrganizerMetrics = async () => {
    try {
        return await EventsModule.getOrganizerMetrics();
    } catch (error) {
        console.error('Error en getOrganizerMetrics(service):', error);
        throw error;
    }
};

export const getEventStats = async (id) => {
    try {
        return await EventsModule.getEventStats(id);
    } catch (error) {
        console.error('Error en getEventStats(service):', error);
        throw error;
    }
};

export const updateEventConfigForm = async (id, configForm) => {
    try {
        const event = await EventsModule.getEventById(id);

        if (!event) {
            throw new Error('Evento no encontrado');
        }

        const result = await EventsModule.updateEventConfigForm(id, JSON.stringify(configForm));

        if (result.affectedRows === 0) {
            throw new Error('Evento no encontrado');
        }

        return true;
    } catch (error) {
        console.error('Error en updateEventConfigForm:', error);
        throw error;
    }
};

export const deleteEvent = async (id) => {
    try {
        const result = await EventsModule.deleteEvent(id);

        if (result.affectedRows === 0) {
            throw new Error('Evento no encontrado');
        }

        return true;
    } catch (error) {
        console.error('Error en deleteEvent:', error);
        if (error.message.includes('no encontrado')) {
            throw error;
        }
        throw new Error('Error al eliminar el evento de la base de datos');
    }
};
