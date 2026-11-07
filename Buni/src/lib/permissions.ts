import type { Permissions } from "@/types/Permissions"

type AuthUserLike = {
  permissions?: Permissions | string
  role?: string
}

export const isSuperUser = (user: AuthUserLike | null | undefined) =>
  user?.permissions === "***"

export const isAdminUser = (user: AuthUserLike | null | undefined) =>
  isSuperUser(user) || user?.role?.toLowerCase() === "administrador"

export const hasPermission = (
  user: AuthUserLike | null | undefined,
  module: keyof Permissions,
  action: "create" | "edit" | "delete" | "view"
): boolean => {
  if (isSuperUser(user)) return true
  if (!user?.permissions || typeof user.permissions === "string") return false
  return !!user.permissions[module]?.[action]
}
