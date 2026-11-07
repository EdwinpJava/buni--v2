import { z } from 'zod';

const entityRefSchema = z.object({
    id: z.string().min(1, 'Referencia sin ID'),
    key: z.string().optional(),
});

const phaseSchema = z.object({
    name: z.string().min(1),
    start_date: z.string(),
    end_date: z.string(),
});

const recurrenceConfigSchema = z.object({
    frequency: z.enum(['daily', 'weekly', 'monthly']).optional(),
    total_phases: z.number().int().positive().optional(),
    start_date: z.string().optional(),
    end_date: z.string().optional(),
    custom_phases: z.array(phaseSchema).optional(),
});

export const createEventSchema = z.object({
    nombre: z.string().trim().min(1, 'El nombre del evento es obligatorio'),
    organizador: z.string().trim().min(1, 'El organizador es obligatorio'),
    organizer_id: z.string().uuid('El ID del organizador no es válido'),
    scenery: entityRefSchema,
    programs: entityRefSchema,
    formAssists: entityRefSchema.optional(),
    formInscriptions: entityRefSchema.optional(),
    cupos: z.union([
        z.coerce.number(),
        z.literal('-1'),
        z.literal(-1),
    ]),
    horarioInicio: z.string().min(1, 'El horario de inicio es obligatorio'),
    horarioFin: z.string().min(1, 'El horario de fin es obligatorio'),
    state: z.union([
        z.boolean(),
        z.enum(['true', 'false']),
        z.coerce.number(),
    ]),
    assists: z.array(z.unknown()).optional(),
    inscriptions: z.array(z.unknown()).optional(),
    formConfig: z.record(z.unknown()).optional(),
    is_recurrent: z.boolean().optional(),
    recurrence_config: recurrenceConfigSchema.nullable().optional(),
}).superRefine((data, ctx) => {
    const start = new Date(data.horarioInicio);
    const end = new Date(data.horarioFin);
    if (Number.isNaN(start.getTime())) {
        ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Fecha de inicio inválida', path: ['horarioInicio'] });
    }
    if (Number.isNaN(end.getTime())) {
        ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Fecha de fin inválida', path: ['horarioFin'] });
    }
    if (!Number.isNaN(start.getTime()) && !Number.isNaN(end.getTime()) && end <= start) {
        ctx.addIssue({
            code: z.ZodIssueCode.custom,
            message: 'El horario de fin debe ser posterior al de inicio',
            path: ['horarioFin'],
        });
    }
    const cuposNum = Number(data.cupos);
    if (data.cupos !== '-1' && data.cupos !== -1 && (!Number.isFinite(cuposNum) || cuposNum < 1)) {
        ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Los cupos deben ser al menos 1 o ilimitados (-1)', path: ['cupos'] });
    }
});

export const formatZodError = (zodError) => ({
    error: 'Datos del evento inválidos',
    details: zodError.issues.map((issue) => ({
        path: issue.path.join('.') || 'root',
        message: issue.message,
    })),
});
