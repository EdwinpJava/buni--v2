import { pool } from '../database/config.js';

/**
 * Parsea la matriz de permisos desde JWT, BD o string JSON.
 * @returns {object|null|'***'}
 */
export const parsePermissions = (raw) => {
    if (!raw) return null;
    if (raw === '***') return '***';
    if (typeof raw === 'string') {
        try {
            return JSON.parse(raw);
        } catch {
            return null;
        }
    }
    return raw;
};

export const isSuperUser = (user) => user?.permissions === '***';

/**
 * Administrador de sistema: superuser (JWT ***) o rol configurado / "Administrador".
 */
export const isAdminActor = (user) => {
    if (isSuperUser(user)) return true;

    const roleName = user?.role?.toLowerCase();
    if (!roleName) return false;

    const adminRoleEnv = process.env.ADMIN_ROLE?.toLowerCase();
    if (adminRoleEnv && roleName === adminRoleEnv) return true;

    return roleName === 'administrador';
};

/**
 * Comprueba si el usuario tiene un permiso de módulo/acción.
 * Fuente: superuser → JWT embebido → rol en BD (roleRow).
 */
export const hasPermission = (user, module, action, roleRow = null) => {
    if (isSuperUser(user)) return true;

    const jwtPermissions = parsePermissions(user?.permissions);
    if (jwtPermissions?.[module]?.[action]) return true;

    if (roleRow) {
        const rolePermissions = parsePermissions(roleRow.permissions);
        if (rolePermissions?.[module]?.[action]) return true;
    }

    return false;
};

export const getRoleByName = async (roleName) => {
    if (!roleName) return null;
    const [rows] = await pool.query('SELECT * FROM roles WHERE name = ?', [roleName]);
    return rows?.[0] ?? null;
};

/**
 * Resuelve el rol del usuario desde BD (para middleware).
 */
export const resolveUserRole = async (user) => {
    if (!user?.role) return null;
    return getRoleByName(user.role);
};
