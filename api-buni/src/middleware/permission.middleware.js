import { hasPermission, isSuperUser, resolveUserRole } from '../lib/permissions.js';

/**
 * Middleware factory: exige permiso module.action usando req.user (verifyToken previo).
 */
export const requirePermission = (module, action, options = {}) => {
    const {
        message = 'No tienes permisos para realizar esta acción',
        requireUserId = true,
    } = options;

    return async (req, res, next) => {
        try {
            const user = req.user;

            if (!user) {
                return res.status(401).json({ error: 'Token no proporcionado o inválido' });
            }

            if (isSuperUser(user)) {
                return next();
            }

            if (requireUserId && !user.id) {
                return res.status(401).json({ error: message });
            }

            const roleRow = await resolveUserRole(user);

            if (hasPermission(user, module, action, roleRow)) {
                return next();
            }

            return res.status(403).json({ error: message });
        } catch (error) {
            console.error(`requirePermission(${module}.${action}):`, error);
            return res.status(401).json({ error: 'Token inválido o expirado' });
        }
    };
};
