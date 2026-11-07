"use client"

import Cookies from "js-cookie"
import { useEffect, useState } from "react"
import { Button } from "@/components/ui/Button"
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/Dialog"
import { Label } from "@/components/ui/Label"
import { Input } from "@/components/ui/Input"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/Select"
import { type User, useUserData } from "@/hooks/auth/useUserData"
import { useAuth } from "@/hooks/auth/useAuth"
import { useNotification } from "@/hooks/client/useNotification"
import { useSocket } from "@/hooks/server/useSocket"
import { useOrganizers } from "@/hooks/server/useOrganizers"
import { isAdminUser, hasPermission } from "@/lib/permissions"
import { createEventPayloadSchema, formatZodErrors } from "@/schemas/createEvent.schema"
import { InputBasic } from "../../InputGeneric"
import { GeneralStructureForm } from "@/types/Table"
import { dataExtra } from "@/config/Data"
import { Form } from "@/types/Forms"
import { Pencil } from "lucide-react"

interface PhaseRow {
  name: string
  start_date: string
  end_date: string
}

interface Props {
  data: {
    table: {
      name: string
      key: string
      isQR?: boolean
    }
    structureForm: GeneralStructureForm
  }
  open: boolean
  onOpenChange: (value: boolean) => void
}

/** Convierte un Date a string datetime-local (YYYY-MM-DDTHH:mm) */
function toLocalInput(d: Date): string {
  const pad = (n: number) => String(n).padStart(2, "0")
  return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}T${pad(d.getHours())}:${pad(d.getMinutes())}`
}

/** Genera exactamente N fases distribuidas entre start y end, preservando ediciones previas */
function buildPhases(start: string, end: string, count: number, prev: PhaseRow[]): PhaseRow[] {
  if (!start || !end || count < 1) return []
  const startMs = new Date(start).getTime()
  const endMs = new Date(end).getTime()
  if (isNaN(startMs) || isNaN(endMs) || endMs <= startMs) {
    // Si las fechas no son válidas, crear fases con nombre y fechas vacías
    return Array.from({ length: count }, (_, i) =>
      prev[i] ?? { name: `Fase ${i + 1}`, start_date: "", end_date: "" }
    )
  }
  const duration = (endMs - startMs) / count
  return Array.from({ length: count }, (_, i) => {
    // Preservar ediciones del usuario para los índices existentes
    if (prev[i]) {
      return { ...prev[i] }
    }
    return {
      name: `Fase ${i + 1}`,
      start_date: toLocalInput(new Date(startMs + duration * i)),
      end_date: toLocalInput(new Date(startMs + duration * (i + 1))),
    }
  })
}

export function CreateEventWithPhasesDialog({ data, open, onOpenChange }: Props) {
  const [formData, setFormData] = useState<Record<string, string>>({})
  const [isRecurrent, setIsRecurrent] = useState(false)
  const [frequency, setFrequency] = useState<"daily" | "weekly" | "monthly">("weekly")
  // Almacenamos como string para permitir borrar y escribir libremente
  const [totalPhasesStr, setTotalPhasesStr] = useState<string>("1")
  const [phases, setPhases] = useState<PhaseRow[]>([])
  const [isSubmitting, setIsSubmitting] = useState(false)
  const { user, setUser }: { user: User; setUser: (user: User) => void } = useUserData()
  const { user: authUser } = useAuth()
  const { showNotification } = useNotification()
  const { socket } = useSocket()
  const { organizers, loading: loadingOrganizers, fetchEligibleOrganizers } = useOrganizers()

  const isAdmin = isAdminUser(authUser)

  useEffect(() => {
    if (open && isAdmin) {
      fetchEligibleOrganizers()
    }
  }, [open, isAdmin, fetchEligibleOrganizers])

  // Valor numérico real: mínimo 1, máximo 52
  const totalPhases = Math.min(52, Math.max(1, parseInt(totalPhasesStr) || 1))

  // Regenerar la lista SOLO cuando cambia la cantidad o las fechas del evento.
  // Preserve ediciones si el nuevo count > count anterior (agrega al final).
  // Si el nuevo count < count anterior, recorta la lista.
  useEffect(() => {
    if (!isRecurrent) return
    setPhases((prev) => {
      if (prev.length === totalPhases) {
        // Solo actualizar las fases sin edición manual si cambiaron las fechas
        return buildPhases(formData.horarioInicio, formData.horarioFin, totalPhases, prev)
      }
      // Cambió la cantidad: reconstruir preservando ediciones existentes
      return buildPhases(formData.horarioInicio, formData.horarioFin, totalPhases, prev)
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isRecurrent, totalPhases, formData.horarioInicio, formData.horarioFin])

  const resetForm = () => {
    const rest: Record<string, string> = {}
    Object.keys(data.structureForm).forEach((key) => {
      rest[key] = ""
    })
    rest.organizer_id = ""
    setFormData(rest)
    setIsRecurrent(false)
    setFrequency("weekly")
    setTotalPhasesStr("1")
    setPhases([])
  }

  useEffect(resetForm, [data.structureForm])

  const handlePhaseChange = (idx: number, field: keyof PhaseRow, value: string) => {
    setPhases((prev) => prev.map((p, i) => (i === idx ? { ...p, [field]: value } : p)))
  }

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setIsSubmitting(true)

    try {
      const token = Cookies.get("token")
      if (!token) throw new Error("No hay token de autenticación")
      if (!hasPermission(authUser, "events", "create")) {
        throw new Error("No tienes permisos para crear eventos")
      }

      const keyData = user[data.table.key as keyof typeof user]
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      const updatedFormData: Record<string, any> = {
        ...formData,
        id: (Array.isArray(keyData) ? keyData.length : 0) + 1,
      }

      if (isAdmin) {
        const organizerId = formData.organizer_id || formData.organizador
        const selectedOrganizer = organizers.find((o) => o.id === organizerId)
        if (!selectedOrganizer) {
          throw new Error("Seleccione un organizador válido de la lista")
        }
        updatedFormData.organizer_id = selectedOrganizer.id
        updatedFormData.organizador = selectedOrganizer.name
      } else if (authUser?.name) {
        updatedFormData.organizador = authUser.name
        if (authUser.id) {
          updatedFormData.organizer_id = authUser.id
        }
      }

      // Resolver referencias de select
      Object.keys(updatedFormData).forEach((key: string) => {
        if (key === "organizador" || key === "organizer_id") return
        if (typeof updatedFormData[key] == "string") {
          const dataSplit = updatedFormData[key].split("_")
          if (dataSplit.length <= 1) return
          const keyFormatted = key == "formAssists" || key == "formInscriptions" ? "forms" : key
          const dataId = dataSplit[dataSplit.length - 1]
          const findDataUser = (user[keyFormatted as keyof User] as (Form | { id: string; nombre: string })[]).find(
            (d) => d.id == dataId
          )
          if (findDataUser) {
            updatedFormData[key] = { id: findDataUser.id, key: keyFormatted }
          }
        }
      })

      // Extra config
      const tableKey = data.table.key as keyof typeof dataExtra
      const extraData = dataExtra[tableKey]
      if (extraData) {
        Object.entries(extraData).forEach(([key, value]) => {
          updatedFormData[key] = value
        })
      }

      // Recurrencia con fases editadas por el usuario
      updatedFormData.is_recurrent = isRecurrent
      if (isRecurrent && phases.length > 0) {
        updatedFormData.recurrence_config = {
          frequency,
          total_phases: phases.length,
          start_date: formData.horarioInicio || "",
          end_date: formData.horarioFin || "",
          custom_phases: phases,
        }
      } else {
        updatedFormData.recurrence_config = null
      }

      const validation = createEventPayloadSchema.safeParse(updatedFormData)
      if (!validation.success) {
        throw new Error(formatZodErrors(validation.error))
      }

      const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/${data.table.key}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(validation.data),
      })

      const data_response = await response.json()
      if (!response.ok) {
        const detailMsg = Array.isArray(data_response.details)
          ? data_response.details.map((d: { message: string }) => d.message).join(". ")
          : null
        throw new Error(detailMsg || data_response.error || "Error al crear el evento")
      }

      const key = data.table.key as keyof User
      const currentList = Array.isArray(user[key]) ? (user[key] as object[]) : []
      const newData = {
        ...user,
        [key]: [...currentList, data_response.data],
      }

      setUser(newData)
      resetForm()
      onOpenChange(false)
      socket?.emit("UPDATE_DATA", newData)

      showNotification({
        title: "Evento creado",
        message: isRecurrent
          ? `Evento creado con ${phases.length} fase(s)`
          : "Evento creado exitosamente",
        type: "success",
      })
    } catch (error) {
      showNotification({
        title: "Error",
        message: error instanceof Error ? error.message : "Error inesperado",
        type: "error",
      })
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-[680px] md:max-w-[800px] overflow-hidden">
        <form className="grid grid-rows-[auto_1fr] max-h-[90vh] overflow-hidden" onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle>Crear {data.table.name}</DialogTitle>
            <DialogDescription>Complete los datos para crear un nuevo {data.table.name}</DialogDescription>
          </DialogHeader>

          <div className="max-h-[75vh] overflow-y-auto px-2 space-y-4 py-2">
            {/* Campos estándar del evento */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-x-4 gap-y-4">
              {Object.keys(data.structureForm).map((value, index) => {
                if (value === "organizador") {
                  if (isAdmin) {
                    return (
                      <div key={index}>
                        <Label htmlFor="organizador">Organizador</Label>
                        <Select
                          value={formData.organizer_id ?? ""}
                          onValueChange={(id) => {
                            const selected = organizers.find((o) => o.id === id)
                            setFormData({
                              ...formData,
                              organizer_id: id,
                              organizador: selected?.name ?? "",
                            })
                          }}
                          required
                          disabled={loadingOrganizers}
                        >
                          <SelectTrigger id="organizador">
                            <SelectValue
                              placeholder={
                                loadingOrganizers
                                  ? "Cargando organizadores..."
                                  : "Seleccione el organizador"
                              }
                            />
                          </SelectTrigger>
                          <SelectContent>
                            {organizers.length > 0 ? (
                              organizers.map((organizer) => (
                                <SelectItem key={organizer.id} value={organizer.id}>
                                  {organizer.name}
                                  {organizer.role ? ` (${organizer.role})` : ""}
                                </SelectItem>
                              ))
                            ) : (
                              <p className="text-gray-500 text-sm p-2">
                                {loadingOrganizers
                                  ? "Cargando..."
                                  : "No hay organizadores con permiso de crear eventos"}
                              </p>
                            )}
                          </SelectContent>
                        </Select>
                      </div>
                    )
                  }

                  return (
                    <div key={index}>
                      <Label htmlFor="organizador-readonly">Organizador</Label>
                      <Input
                        id="organizador-readonly"
                        type="text"
                        value={authUser?.name ?? ""}
                        disabled
                        readOnly
                      />
                    </div>
                  )
                }

                return (
                  <div key={index}>
                    <InputBasic
                      formData={formData}
                      data={{
                        form: data.structureForm[value],
                        onChange: (e: React.ChangeEvent<HTMLInputElement> | string) =>
                          setFormData({
                            ...formData,
                            [value]: typeof e === "string" ? e : e.target.value,
                          }),
                        key: value,
                        index,
                      }}
                      user={user}
                    />
                  </div>
                )
              })}
            </div>

            {/* Panel de configuración de fases */}
            <div className="border rounded-lg p-4 bg-muted/30 space-y-4">
              {/* Toggle */}
              <div className="flex items-center space-x-3">
                <input
                  type="checkbox"
                  id="is_recurrent"
                  checked={isRecurrent}
                  onChange={(e) => {
                    setIsRecurrent(e.target.checked)
                    if (!e.target.checked) setPhases([])
                  }}
                  className="h-4 w-4 rounded border-gray-300 text-primary focus:ring-primary cursor-pointer"
                />
                <Label htmlFor="is_recurrent" className="font-semibold text-base cursor-pointer">
                  Evento por Fases / Recurrente
                </Label>
              </div>

              {isRecurrent && (
                <div className="space-y-4 animate-in fade-in slide-in-from-top-2 duration-200">
                  {/* Fila de configuración */}
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="grid gap-2">
                      <Label>Frecuencia</Label>
                      <Select
                        value={frequency}
                        onValueChange={(v) => setFrequency(v as "daily" | "weekly" | "monthly")}
                      >
                        <SelectTrigger>
                          <SelectValue placeholder="Seleccione frecuencia" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="daily">Diario</SelectItem>
                          <SelectItem value="weekly">Semanal</SelectItem>
                          <SelectItem value="monthly">Mensual</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>

                    <div className="grid gap-2">
                      <Label htmlFor="total_phases">
                        Número de Fases
                        <span className="ml-1 text-xs text-muted-foreground font-normal">(máx. 52)</span>
                      </Label>
                      <Input
                        id="total_phases"
                        type="number"
                        inputMode="numeric"
                        value={totalPhasesStr}
                        onChange={(e) => setTotalPhasesStr(e.target.value)}
                        onBlur={() => {
                          const n = parseInt(totalPhasesStr)
                          if (!n || n < 1) setTotalPhasesStr("1")
                          else if (n > 52) setTotalPhasesStr("52")
                          else setTotalPhasesStr(String(n))
                        }}
                        className="w-full"
                        placeholder="Ej: 8"
                      />
                      <p className="text-xs text-muted-foreground">
                        Se crearán exactamente <strong>{totalPhases}</strong> fase(s). Cambia el número para ajustar.
                      </p>
                    </div>
                  </div>

                  {/* Lista editable de fases — cantidad fija */}
                  {phases.length > 0 && (
                    <div className="space-y-2">
                      <Label className="text-sm font-semibold flex items-center gap-2">
                        <Pencil className="h-3.5 w-3.5" />
                        Editar Fases ({phases.length})
                        <span className="text-xs font-normal text-muted-foreground">
                          — puedes personalizar el nombre y las fechas de cada una
                        </span>
                      </Label>

                      <div className="space-y-2 max-h-64 overflow-y-auto pr-1">
                        {phases.map((phase, idx) => (
                          <div
                            key={idx}
                            className="grid grid-cols-[auto_1fr_1fr_1fr] gap-2 items-end p-2.5 border rounded-md bg-background"
                          >
                            {/* Badge numerado */}
                            <div className="flex items-center justify-center h-7 w-7 rounded-full bg-primary text-primary-foreground text-xs font-bold shrink-0 mb-0.5">
                              {idx + 1}
                            </div>

                            {/* Nombre */}
                            <div className="grid gap-1">
                              <Label className="text-[10px] text-muted-foreground">Nombre</Label>
                              <Input
                                value={phase.name}
                                onChange={(e) => handlePhaseChange(idx, "name", e.target.value)}
                                className="h-7 text-xs"
                                placeholder={`Fase ${idx + 1}`}
                              />
                            </div>

                            {/* Inicio */}
                            <div className="grid gap-1">
                              <Label className="text-[10px] text-muted-foreground">Inicio</Label>
                              <Input
                                type="datetime-local"
                                value={phase.start_date}
                                onChange={(e) => handlePhaseChange(idx, "start_date", e.target.value)}
                                className="h-7 text-xs"
                              />
                            </div>

                            {/* Fin */}
                            <div className="grid gap-1">
                              <Label className="text-[10px] text-muted-foreground">Fin</Label>
                              <Input
                                type="datetime-local"
                                value={phase.end_date}
                                onChange={(e) => handlePhaseChange(idx, "end_date", e.target.value)}
                                className="h-7 text-xs"
                              />
                            </div>
                          </div>
                        ))}
                      </div>
                    </div>
                  )}

                  {phases.length === 0 && (
                    <p className="text-xs text-muted-foreground text-center py-3 border rounded-md border-dashed">
                      Ingresa las fechas de inicio y fin del evento para generar las fases automáticamente.
                    </p>
                  )}
                </div>
              )}
            </div>
          </div>

          <DialogFooter className="flex flex-row mt-2 pt-2 border-t">
            <Button variant="outline" type="button" onClick={() => onOpenChange(false)}>
              Cancelar
            </Button>
            <Button
              type="submit"
              className="bg-primary hover:bg-primary/90"
              loading={isSubmitting}
              loadingText="Creando..."
            >
              Crear Evento
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  )
}
