import { requirePermission } from './permission.middleware.js';

/** Crear evento → events.create */
export const createEventMiddleware = requirePermission('events', 'create', {
    message: 'No tienes permisos para crear eventos',
    requireUserId: true,
});

/** Actualizar evento → events.edit (matriz de permisos del sistema) */
export const updateEventMiddleware = requirePermission('events', 'edit', {
    message: 'No tienes permisos para actualizar eventos',
    requireUserId: true,
});

/** Eliminar evento → events.delete */
export const deleteEventMiddleware = requirePermission('events', 'delete', {
    message: 'No tienes permisos para eliminar eventos',
    requireUserId: true,
});
