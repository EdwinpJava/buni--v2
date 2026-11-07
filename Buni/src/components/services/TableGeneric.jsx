"use client"

import { useState, useMemo, useEffect } from "react"
import { Button } from "@/components/ui/Button"
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from "@/components/ui/Dropdown"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/Table"
import { Edit, Filter, MoreVertical, Plus, QrCode, Trash, Eye, Lock } from "lucide-react"
import { CreateEventDialog } from "./Dialogs/Tables/CreateDialog"
import { CreateEventWithPhasesDialog } from "./Dialogs/Tables/CreateEventWithPhasesDialog"
import { QRDialog } from "./Dialogs/QRDialog"
import { FilterDialog } from "./Dialogs/Tables/FilterDialog"
import { EditDialog } from "./Dialogs/Tables/EditDialog"
import { DeleteDialog } from "./Dialogs/Tables/DeleteDialog"
import { useUserData } from "@/hooks/auth/useUserData"
import { useRouter } from "next/navigation"
import { Input } from "@/components/ui/Input"
import CustomLoader from "@/components/ui/CustomLoader"
import { DialogRecovery } from "./Dialogs/User/DialogRecovery"
import Cookies from "js-cookie"
import { useNotification } from "@/hooks/client/useNotification"
import { useAuth } from "@/hooks/auth/useAuth"

export function TableGeneric({ structure, structureForm, table }) {
  const { user, isLoaded } = useUserData()
  const { user: authUser } = useAuth()
  const router = useRouter()
  const { showNotification } = useNotification();
  const [mounted, setMounted] = useState(false)
  const [openCreate, setOpenCreate] = useState(false)
  const [openQR, setOpenQR] = useState(false)
  const [selectedEvent, setSelectedEvent] = useState(null)
  const [qrType, setQrType] = useState("inscriptions")
  const buildEmptyFilters = (columns) => {
    return (columns || []).reduce((acc, col) => {
      if (col?.filter && col.key !== "id") acc[col.key] = ""
      return acc
    }, {})
  }

  const [filters, setFilters] = useState(() => buildEmptyFilters(structure))
  const [sortConfig, setSortConfig] = useState(null)
  const [openFilter, setOpenFilter] = useState(null)
  const [openEdit, setOpenEdit] = useState(false)
  const [eventToEdit, setEventToEdit] = useState(null)
  const [openDelete, setOpenDelete] = useState(false)
  const [eventToDelete, setEventToDelete] = useState(null)
  const [showPassword, setShowPassword] = useState(false)
  const [sendedCode, setSendedCode] = useState(false)
  const [openRecovery, setOpenRecovery] = useState(false)
  const [eventToRecovery, setEventToRecovery] = useState(null)

  useEffect(() => {
    setMounted(true)
  }, [])

  const canCreateEvent = useMemo(() => {
    if (table?.key !== "events") return true
    if (authUser?.permissions === "***") return true
    if (authUser?.permissions && typeof authUser.permissions === "object") {
      return !!authUser.permissions?.events?.create
    }
    return false
  }, [authUser, table?.key])

  const userTableData = useMemo(() => {
    if (!isLoaded) return [];
    return user[table.key] || [];
  }, [isLoaded, user, table.key]);

  const getResolvedReferenceName = (ref) => {
    if (!ref || !ref.key || !ref.id) return ""
    const targetKey = (ref.key === "formAssists" || ref.key === "formInscriptions") ? "forms" : ref.key
    const dataFind = user[targetKey]?.find((f) => f.id === ref.id)
    return dataFind?.name || dataFind?.nombre || ""
  }

  const getTextValueForFilter = (row, key) => {
    const raw = row?.[key]
    if (raw === null || raw === undefined) return ""

    if (typeof raw !== "object") {
      if (key === "cupos" && raw === "-1") return "Ilimitado"
      if (key === "state" || key === "estado") {
        return (raw === "true" || raw === true || raw === "activo") ? "Activo" : "Inactivo"
      }
      if (key === "horarioInicio" || key === "horarioFin") {
        const rawText = String(raw)
        const date = new Date(raw)
        if (Number.isNaN(date.getTime())) return rawText

        const isoDate = date.toISOString().split("T")[0] // YYYY-MM-DD
        const localized = date.toLocaleString("es-ES", {
          year: "numeric",
          month: "2-digit",
          day: "2-digit",
          hour: "2-digit",
          minute: "2-digit",
          second: "2-digit",
        })
        // Combinamos ISO (YYYY-MM-DD) y Localizado (DD/MM/YYYY HH:MM:SS)
        // Esto permite que el filtro coincida con cualquiera de las partes.
        return `${isoDate} ${localized}`
      }
      return String(raw)
    }

    const resolved = getResolvedReferenceName(raw)
    if (resolved) return String(resolved)

    try {
      return JSON.stringify(raw)
    } catch {
      return String(raw)
    }
  }

  const getSortValue = (row, key) => {
    const raw = row?.[key]
    if (raw === null || raw === undefined) return null

    if (typeof raw !== "object") {
      if (key === "cupos" && raw === "-1") return Number.POSITIVE_INFINITY
      if (key === "state") return raw === "true" ? 1 : 0
      if (key === "horarioInicio" || key === "horarioFin") {
        const t = new Date(raw).getTime()
        return Number.isNaN(t) ? String(raw) : t
      }

      const asNumber = Number(raw)
      if (Number.isFinite(asNumber) && String(raw).trim() !== "") return asNumber

      return String(raw)
    }

    const resolved = getResolvedReferenceName(raw)
    if (resolved) return String(resolved)

    return getTextValueForFilter(row, key)
  }

  const sortedAndFilteredEvents = useMemo(() => {
    if (!isLoaded) return [];

    const filteredEvents = userTableData.filter(
      (event) => {
        return Object.keys(filters).every((key) => {
          const filterKey = key
          if (filters[filterKey] === "") return true
          const haystack = getTextValueForFilter(event, filterKey).toLowerCase()
          return haystack.includes(filters[filterKey].toLowerCase())
        })
      }
    )

    if (sortConfig !== null) {
      filteredEvents.sort((a, b) => {
        const aVal = getSortValue(a, sortConfig.key)
        const bVal = getSortValue(b, sortConfig.key)

        let cmp = 0
        if (aVal === null && bVal === null) cmp = 0
        else if (aVal === null) cmp = -1
        else if (bVal === null) cmp = 1
        else if (typeof aVal === "number" && typeof bVal === "number") cmp = aVal - bVal
        else cmp = String(aVal).localeCompare(String(bVal), "es", { numeric: true, sensitivity: "base" })

        return sortConfig.direction === "asc" ? cmp : -cmp
      })
    }

    return filteredEvents;
  }, [userTableData, filters, sortConfig, isLoaded, user]);

  useEffect(() => {
    if (!isLoaded) return;
    Object.keys(structureForm).forEach(value => {
      const valueFormatted = value == "formAssists" || value == "formInscriptions" ? "forms" : value
      if (structureForm[value].type == "select" && Array.isArray(user[valueFormatted])) {
        const rest = user[valueFormatted].filter(v => v.state == true || v.state == "true").map(s => {
          const name = s.name || s.nombre
          return {
            value: name,
            label: name.charAt(0).toUpperCase() + name.slice(1),
            id: s.id
          }
        })
        structureForm[value].options = rest
      }
    })
  }, [isLoaded, structureForm, user]);

  if (!mounted || !isLoaded) {
    return (
      <CustomLoader />
    )
  }

  const handleQRClick = (event, type) => {
    setSelectedEvent(event)
    setQrType(type)
    setOpenQR(true)
  }

  const handleEditClick = (event) => {
    setEventToEdit(event)
    setOpenEdit(true)
  }

  const handleDeleteClick = (event) => {
    setEventToDelete(event)
    setOpenDelete(true)
  }

  const handleFilter = (column, value) => {
    setFilters((prev) => ({ ...prev, [column]: value }))
  }

  const handleSort = (column, direction) => {
    setSortConfig(direction ? { key: column, direction } : null)
  }

  const clearFilters = () => {
    setFilters(buildEmptyFilters(structure))
    setSortConfig(null)
  }

  const normalizeData = (data, value) => {
    if (typeof data[value] != "object") {
      if (value === "cupos" && data[value] === "-1") {
        return "Ilimitado"
      }

      if (value === "state") {
        return (
          <span className={`inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-medium ${data[value] === "true" ? "bg-green-100 text-green-800" : "bg-red-100 text-red-800"
            }`}>
            {data[value] === "true" ? "Activo" : "Inactivo"}
          </span>
        );
      }

      if (value === "password") {
        return (
          <div className="flex flex-row gap-2">
            <Input
              disabled
              type={showPassword ? "text" : "password"}
              className="w-full border-none"
              value={data[value]}
              style={{
                cursor: 'default',
                color: 'var(--foreground)',
                WebkitTextFillColor: 'var(--foreground)',
                opacity: 1
              }}
            />
            <Button variant="ghost" className="h-fit w-fit p-0" onClick={() => setShowPassword(!showPassword)}>
              <Eye className="h-4 w-4 p-0" />
            </Button>
          </div>
        )
      }

      if (value === "nombre" && table.key === "events") {
        const isRec = !!data.is_recurrent;
        const config = typeof data.recurrence_config === 'string' ? JSON.parse(data.recurrence_config) : data.recurrence_config;
        const totalPhases = config?.total_phases || 1;
        
        return (
          <div className="flex flex-col gap-1 items-start">
            <span className="font-semibold text-sm">{data[value]}</span>
            {isRec ? (
              <span className="inline-flex items-center gap-1 rounded-full bg-purple-50 px-2 py-0.5 text-[10px] font-medium text-purple-700 ring-1 ring-inset ring-purple-700/10">
                🔄 Recurrente ({totalPhases} fases)
              </span>
            ) : (
              <span className="inline-flex items-center gap-1 rounded-full bg-gray-50 px-2 py-0.5 text-[10px] font-medium text-gray-600 ring-1 ring-inset ring-gray-500/10">
                📅 Fase Única
              </span>
            )}
          </div>
        );
      }

      if (value === "horarioInicio" || value === "horarioFin") {
        return new Date(data[value]).toLocaleString("es-ES", { year: "numeric", month: "2-digit", day: "2-digit", hour: "2-digit", minute: "2-digit", second: "2-digit" })
      }

      return data[value]
    }

    const DataEvent = data[value]

    if (!DataEvent || !DataEvent.key) {
      if (typeof data[value] === "object" && data[value] !== null) {
        try {
          return JSON.stringify(data[value])
        } catch {
          return String(data[value])
        }
      }
      return data[value]
    }

    return getResolvedReferenceName(DataEvent)
  }

  const handleViewData = (data) => {
    router.push(`/${table.key}/${data.id}`)
  }

  const handleRecoverPassword = async (data) => {
    setOpenRecovery(true)
    setEventToRecovery(data)

    try {
      const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/users/${data.id}/recovery`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${Cookies.get("token")}`
        },
      })

      const data_response = await response.json()

      if (!response.ok) {
        throw new Error(data_response.error || "Error al enviar el código de recuperación")
      }

      setSendedCode(true)
    } catch (error) {
      console.error(error)
      setOpenRecovery(false)

      showNotification({
        type: "error",
        message: error.message || "Error al enviar el código de recuperación"
      })
    }

  }

  return (
    <div className="space-y-4">
      <div className="flex flex-row justify-between gap-4 max-md:flex-col">
        <Button
          onClick={() => {
            if (!canCreateEvent) {
              showNotification({
                type: "error",
                title: "Acceso restringido",
                message: "No tienes permiso para crear eventos. Contacta al administrador.",
              })
              return
            }
            setOpenCreate(true)
          }}
          className="bg-primary hover:bg-primary/90 w-auto max-md:w-full"
        >
          <Plus className="mr-2 h-4 w-4" />
          Agregar
        </Button>
        <Button variant="outline" onClick={clearFilters} className="w-auto max-md:w-full">
          <Filter className="mr-2 h-4 w-4" />
          Limpiar Filtros
        </Button>
      </div>

      <div className="overflow-x-auto">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>N°</TableHead>
              {structure.filter(column => column.key !== "id").map((column) => (
                <TableHead key={column.key} className="whitespace-nowrap">
                  <div className="w-full" style={{ display: "table" }}>
                    <span className="p-1" style={{ display: "table-cell", verticalAlign: "middle" }}>
                      {column.value}
                    </span>

                    {column.filter && (
                      <span style={{ display: "table-cell", verticalAlign: "middle", textAlign: "right", width: "1%" }}>
                        <Button variant="ghost" onClick={() => setOpenFilter(column.key)} className="hover:bg-transparent !p-1 !h-fit align-middle">
                          <Filter className="h-4 w-4" />
                        </Button>
                      </span>
                    )}
                  </div>
                </TableHead>
              ))}
              <TableHead className="text-right">Acciones</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {sortedAndFilteredEvents.length === 0 ? (
              <TableRow>
                <TableCell colSpan={structure.length + 1} className="text-center">
                  No se encontraron datos
                </TableCell>
              </TableRow>
            ) : (
              sortedAndFilteredEvents.map((data, index) => (
                <TableRow key={data.id || index}>
                  <TableCell>{index + 1}</TableCell>
                  {structure.map((column) => {
                    if (column.key === "id") return null;
                    return (
                      <TableCell key={`${column.key}_${index}`}>
                        {normalizeData(data, column.key)}
                      </TableCell>
                    );
                  })}
                  <TableCell className="text-right">
                    <DropdownMenu>
                      <DropdownMenuTrigger asChild>
                        <Button variant="ghost" className="h-fit w-fit p-0">
                          <span className="sr-only">Abrir menú</span>
                          <MoreVertical className="h-4 w-4 p-0" />
                        </Button>
                      </DropdownMenuTrigger>
                      <DropdownMenuContent align="end">
                        <DropdownMenuItem className="text-green-800" onClick={() => handleEditClick(data)}>
                          <Edit className="mr-2 h-4 w-4 text-green-800" />
                          Editar
                        </DropdownMenuItem>
                        <DropdownMenuItem className="text-red-800" onClick={() => handleDeleteClick(data)}>
                          <Trash className="mr-2 h-4 w-4 text-red-800" />
                          Eliminar
                        </DropdownMenuItem>
                        {table.isView && (
                          <DropdownMenuItem onClick={() => handleViewData(data)}>
                            <Eye className="mr-2 h-4 w-4" />
                            Ver Evento
                          </DropdownMenuItem>
                        )}
                        {table.isQR && (
                          <>
                            <DropdownMenuItem onClick={() => handleQRClick(data, "inscriptions")}>
                              <QrCode className="mr-2 h-4 w-4" />
                              QR Inscripción
                            </DropdownMenuItem>
                            <DropdownMenuItem onClick={() => handleQRClick(data, "assists")}>
                              <QrCode className="mr-2 h-4 w-4" />
                              QR Asistencia
                            </DropdownMenuItem>
                            <DropdownMenuItem className="text-green-800" onClick={() => router.push(`forms/assists/${data.id}`)}>
                              Registro de Asistencia (Debug)
                            </DropdownMenuItem>
                            <DropdownMenuItem className="text-green-800" onClick={() => router.push(`forms/inscriptions/${data.id}`)}>
                              Registro de Inscripcion (Debug)
                            </DropdownMenuItem>
                          </>
                        )}
                        {table.isUser && (
                          <>
                            <DropdownMenuItem onClick={() => handleRecoverPassword(data)}>
                              <Lock className="mr-2 h-4 w-4" />
                              Recuperar contraseña
                            </DropdownMenuItem>
                          </>
                        )}
                      </DropdownMenuContent>
                    </DropdownMenu>
                  </TableCell>
                </TableRow>
              ))
            )}
          </TableBody>
        </Table>
      </div>

      {table.key === "events" ? (
        <CreateEventWithPhasesDialog
          data={{ table: table, structureForm: structureForm }}
          open={openCreate}
          onOpenChange={setOpenCreate}
        />
      ) : (
        <CreateEventDialog
          data={{ table: table, structureForm: structureForm }}
          open={openCreate}
          onOpenChange={setOpenCreate}
        />
      )}

      {selectedEvent && <QRDialog open={openQR} onOpenChange={setOpenQR} event={selectedEvent} type={qrType} />}

      {eventToDelete && (
        <DeleteDialog
          data={{ table: table, structureForm: structureForm }}
          open={openDelete}
          onOpenChange={setOpenDelete}
          initialData={eventToDelete}
        />
      )}

      {eventToEdit && (
        <EditDialog
          data={{ table: table, structureForm: structureForm }}
          open={openEdit}
          onOpenChange={setOpenEdit}
          initialData={eventToEdit}
        />
      )}

      {openRecovery && (
        <DialogRecovery
          open={openRecovery}
          eventToRecovery={eventToRecovery}
          sendedCode={sendedCode}
          setSendedCode={setSendedCode}
          onOpenChange={setOpenRecovery}
        />
      )}

      <FilterDialog
        open={openFilter !== null}
        onOpenChange={() => setOpenFilter(null)}
        column={openFilter}
        structureForm={structureForm}
        onFilter={(value) => {
          if (openFilter) {
            handleFilter(openFilter, value)
          }
          setOpenFilter(null)
        }}
        onSort={(direction) => {
          if (openFilter) {
            handleSort(openFilter, direction)
          }
          setOpenFilter(null)
        }}
      />
    </div>
  )
}
