import { UserModule } from '../models/user.module.js';
import { RoleModule } from '../models/roles.module.js';
import { parsePermissions } from '../lib/permissions.js';

/**
 * Usuarios elegibles como organizador: rol con events.create activo.
 */
export const getEligibleOrganizers = async () => {
    const [users, roles] = await Promise.all([
        UserModule.getUsers(),
        RoleModule.getRoles(),
    ]);

    const roleById = new Map(roles.map((r) => [r.id, r]));

    return users
        .filter((user) => {
            const role = roleById.get(user.role_id);
            if (!role) return false;
            const permissions = parsePermissions(role.permissions);
            return !!permissions?.events?.create;
        })
        .map((user) => {
            const role = roleById.get(user.role_id);
            return {
                id: user.id,
                name: user.name,
                email: user.email,
                role: role?.name ?? null,
            };
        })
        .sort((a, b) => a.name.localeCompare(b.name, 'es'));
};
