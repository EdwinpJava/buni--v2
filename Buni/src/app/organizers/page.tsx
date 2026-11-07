"use client"

import { useCallback, useDeferredValue, useEffect, useMemo, useState } from "react"
import Cookies from "js-cookie"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/Card"
import { Button } from "@/components/ui/Button"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/Table"
import Section from "@/components/ui/Section"
import CustomLoader from "@/components/ui/CustomLoader"
import { Progress } from "@/components/ui/Progress"
import { Input } from "@/components/ui/Input"
import { Star, ShieldAlert } from "lucide-react"
import { useSocket } from "@/hooks/server/useSocket"

type OrganizerMetric = {
  organizador: string
  total_events: number
  total_attendances: number
  avg_rating: number | null
  rated_count: number
}

type OrganizerEventDrilldown = {
  id: string
  nombre: string
  organizador: string
  horarioInicio: string
  horarioFin: string
  stats: {
    total_registrations: number
    total_attendances: number
    attendance_pct: number
    avg_rating: number | null
    rated_count: number
  }
  phases: Array<{
    id: string
    name: string
    start_date: string
    end_date: string
    attendance_count: number
    avg_rating: number | null
    rated_count: number
  }>
}

export default function OrganizersPerformancePage() {
  const [organizers, setOrganizers] = useState<OrganizerMetric[]>([])
  const [organizersLoading, setOrganizersLoading] = useState(true)
  const [selectedOrganizer, setSelectedOrganizer] = useState<string>("")
  const [organizerSearch, setOrganizerSearch] = useState<string>("")
  const deferredOrganizerSearch = useDeferredValue(organizerSearch)
  const [organizerEvents, setOrganizerEvents] = useState<OrganizerEventDrilldown[]>([])
  const [organizerEventsLoading, setOrganizerEventsLoading] = useState(false)
  const [selectedOrganizerEventId, setSelectedOrganizerEventId] = useState<string>("")
  const { socket } = useSocket()

  const loadOrganizers = useCallback(async () => {
    setOrganizersLoading(true)
    try {
      const res = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/events/metrics/organizers`, {
        headers: { Authorization: `Bearer ${Cookies.get("token")}` },
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json?.error || "No se pudieron cargar los organizadores")
      const rows: OrganizerMetric[] = Array.isArray(json) ? json : []
      setOrganizers(rows)
      setSelectedOrganizer((prev) => (prev && rows.some(r => r.organizador === prev) ? prev : (rows[0]?.organizador || "")))
    } catch (e) {
      console.error(e)
      setOrganizers([])
      setSelectedOrganizer("")
    } finally {
      setOrganizersLoading(false)
    }
  }, [])

  useEffect(() => {
    loadOrganizers()
  }, [loadOrganizers])

  useEffect(() => {
    if (!socket) return
    const handler = () => {
      // Refetch tras cambios globales (p.ej. creación de eventos)
      loadOrganizers()
    }
    socket.on("UPDATE_DATA", handler)
    return () => {
      socket.off("UPDATE_DATA", handler)
    }
  }, [socket, loadOrganizers])

  useEffect(() => {
    const loadOrganizerEvents = async () => {
      if (!selectedOrganizer) {
        setOrganizerEvents([])
        setSelectedOrganizerEventId("")
        return
      }

      setOrganizerEventsLoading(true)
      try {
        const res = await fetch(
          `${process.env.NEXT_PUBLIC_API_URL}/analytics/organizers/${encodeURIComponent(selectedOrganizer)}/events`,
          { headers: { Authorization: `Bearer ${Cookies.get("token")}` } }
        )
        const json = await res.json()
        if (!res.ok) throw new Error(json?.error || "No se pudieron cargar los eventos del organizador")
        const rows: OrganizerEventDrilldown[] = Array.isArray(json) ? json : []
        setOrganizerEvents(rows)
        setSelectedOrganizerEventId(rows[0]?.id || "")
      } catch (e) {
        console.error(e)
        setOrganizerEvents([])
        setSelectedOrganizerEventId("")
      } finally {
        setOrganizerEventsLoading(false)
      }
    }

    loadOrganizerEvents()
  }, [selectedOrganizer])

  const selectedOrganizerMetric = useMemo(
    () => organizers.find(o => o.organizador === selectedOrganizer) || null,
    [organizers, selectedOrganizer]
  )

  const filteredOrganizers = useMemo(() => {
    const q = deferredOrganizerSearch.trim().toLowerCase()
    if (!q) return organizers
    return organizers.filter(o => (o.organizador || "").toLowerCase().includes(q))
  }, [organizers, deferredOrganizerSearch])

  const selectedEvent = useMemo(
    () => organizerEvents.find(e => e.id === selectedOrganizerEventId) || null,
    [organizerEvents, selectedOrganizerEventId]
  )

  return (
    <Section>
      <div className="space-y-6">
        <div>
          <h1 className="text-3xl font-bold tracking-tight">Rendimiento de Organizadores</h1>
          <p className="text-muted-foreground">
            Monitoreo detallado de actividades, asistencias y nivel de satisfacción de los eventos creados por cada organizador.
          </p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
          {/* Listado de Organizadores */}
          <Card className="lg:col-span-4 shadow-sm border-slate-200">
            <CardHeader className="flex flex-col gap-1 pb-4">
              <CardTitle className="flex items-center gap-2 text-lg font-bold">
                <Star className="h-5 w-5 text-yellow-500 fill-yellow-500" /> Organizadores
              </CardTitle>
              <CardDescription className="text-xs">
                Selecciona un organizador para auditar sus eventos y valoraciones.
              </CardDescription>
            </CardHeader>
            <CardContent className="px-4">
              {organizersLoading ? (
                <div className="py-20"><CustomLoader /></div>
              ) : organizers.length === 0 ? (
                <div className="text-sm text-muted-foreground py-20 text-center flex flex-col items-center justify-center gap-2">
                  <ShieldAlert className="h-8 w-8 text-slate-300" />
                  <span>No hay datos de organizadores disponibles.</span>
                </div>
              ) : (
                <div className="space-y-3">
                  <Input
                    value={organizerSearch}
                    onChange={(e) => setOrganizerSearch(e.target.value)}
                    placeholder="Buscar organizador..."
                    className="h-9 text-sm"
                  />

                  <div className="space-y-2.5 max-h-[510px] overflow-y-auto pr-1">
                  {filteredOrganizers.map((o) => {
                    const isActive = o.organizador === selectedOrganizer
                    return (
                      <button
                        key={o.organizador}
                        type="button"
                        onClick={() => setSelectedOrganizer(o.organizador)}
                        className={`w-full text-left p-3.5 rounded-xl border transition-all duration-200 ${
                          isActive 
                            ? "bg-slate-900 border-slate-900 text-white shadow-md" 
                            : "bg-white border-slate-200 hover:bg-slate-50 text-slate-900 hover:border-slate-300"
                        }`}
                      >
                        <div className="flex items-start justify-between gap-2">
                          <div>
                            <p className="font-semibold text-sm">{o.organizador}</p>
                            <p className={`text-xs mt-1 ${isActive ? "text-slate-300" : "text-slate-500"}`}>
                              {o.total_events} act. · {o.total_attendances} asist.
                            </p>
                          </div>
                          <div className="text-right">
                            <p className="text-sm font-extrabold flex items-center justify-end gap-1">
                              <Star className={`h-3 w-3 ${isActive ? "text-yellow-400 fill-yellow-400" : "text-yellow-500 fill-yellow-500"}`} />
                              {o.avg_rating !== null ? `${o.avg_rating}/5` : "—"}
                            </p>
                            <p className={`text-[10px] mt-0.5 ${isActive ? "text-slate-300" : "text-slate-400"}`}>
                              {o.rated_count} calif.
                            </p>
                          </div>
                        </div>
                        <Progress
                          value={o.avg_rating !== null ? (o.avg_rating / 5) * 100 : 0}
                          className="h-1 mt-3 bg-slate-200"
                        />
                      </button>
                    )
                  })}
                  </div>
                </div>
              )}
            </CardContent>
          </Card>

          {/* Panel de Detalle y Auditoría */}
          <Card className="lg:col-span-8 shadow-sm border-slate-200">
            <CardHeader className="flex flex-col gap-1 pb-4">
              <CardTitle className="text-lg font-bold">Panel de Inspección</CardTitle>
              <CardDescription className="text-xs">
                {selectedOrganizer ? `Analizando la gestión de: ${selectedOrganizer}` : "Selecciona un organizador en el panel izquierdo."}
              </CardDescription>
            </CardHeader>
            <CardContent>
              {!selectedOrganizer ? (
                <div className="text-sm text-muted-foreground py-20 text-center flex flex-col items-center justify-center gap-2">
                  <Star className="h-8 w-8 text-slate-300" />
                  <span>Por favor, selecciona un organizador para ver su historial.</span>
                </div>
              ) : organizerEventsLoading ? (
                <div className="py-20"><CustomLoader /></div>
              ) : (
                <div className="space-y-6">
                  {/* Tarjetas KPI de Resumen */}
                  {selectedOrganizerMetric && (
                    <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
                      <div className="p-4 rounded-xl border border-slate-200 bg-white">
                        <p className="text-[10px] uppercase font-bold text-slate-400 tracking-wider">Actividades</p>
                        <p className="text-2xl font-black text-slate-900 mt-1">{selectedOrganizerMetric.total_events}</p>
                      </div>
                      <div className="p-4 rounded-xl border border-slate-200 bg-white">
                        <p className="text-[10px] uppercase font-bold text-slate-400 tracking-wider">Asistencias</p>
                        <p className="text-2xl font-black text-slate-900 mt-1">{selectedOrganizerMetric.total_attendances}</p>
                      </div>
                      <div className="p-4 rounded-xl border border-slate-200 bg-white">
                        <p className="text-[10px] uppercase font-bold text-slate-400 tracking-wider">Rating Promedio</p>
                        <p className="text-2xl font-black text-slate-900 mt-1 flex items-center gap-1.5">
                          <Star className="h-5 w-5 text-yellow-500 fill-yellow-500" />
                          {selectedOrganizerMetric.avg_rating !== null ? `${selectedOrganizerMetric.avg_rating}/5` : "—"}
                        </p>
                      </div>
                      <div className="p-4 rounded-xl border border-slate-200 bg-white">
                        <p className="text-[10px] uppercase font-bold text-slate-400 tracking-wider">Calificaciones</p>
                        <p className="text-2xl font-black text-slate-900 mt-1">{selectedOrganizerMetric.rated_count}</p>
                      </div>
                    </div>
                  )}

                  {/* Detalle de Actividades y Fases */}
                  <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
                    {/* Tabla de Actividades */}
                    <div className="rounded-xl border border-slate-200 overflow-hidden bg-white">
                      <div className="p-4 border-b border-slate-100 bg-slate-50">
                        <p className="font-bold text-sm text-slate-900">Actividades Registradas</p>
                        <p className="text-xs text-slate-500 mt-0.5">Selecciona un evento para ver sus fases</p>
                      </div>
                      <div className="max-h-[300px] overflow-y-auto">
                        <Table>
                          <TableHeader className="bg-slate-50">
                            <TableRow>
                              <TableHead className="text-xs font-semibold text-slate-700">Nombre</TableHead>
                              <TableHead className="text-center text-xs font-semibold text-slate-700">Asistencias</TableHead>
                              <TableHead className="text-center text-xs font-semibold text-slate-700">Rating</TableHead>
                            </TableRow>
                          </TableHeader>
                          <TableBody>
                            {organizerEvents.length === 0 ? (
                              <TableRow>
                                <TableCell colSpan={3} className="text-center text-slate-400 py-10 text-xs">
                                  Sin actividades registradas.
                                </TableCell>
                              </TableRow>
                            ) : (
                              organizerEvents.map(ev => {
                                const isActive = ev.id === selectedOrganizerEventId
                                return (
                                  <TableRow
                                    key={ev.id}
                                    className={`cursor-pointer transition-colors text-xs ${isActive ? "bg-slate-100/80 font-medium" : "hover:bg-slate-50"}`}
                                    onClick={() => setSelectedOrganizerEventId(ev.id)}
                                  >
                                    <TableCell className="font-medium text-slate-900">{ev.nombre}</TableCell>
                                    <TableCell className="text-center text-slate-600">{ev.stats.total_attendances}</TableCell>
                                    <TableCell className="text-center">
                                      <span className="font-semibold text-slate-950 flex items-center justify-center gap-1">
                                        <Star className="h-3 w-3 text-yellow-500 fill-yellow-500" />
                                        {ev.stats.avg_rating !== null ? `${ev.stats.avg_rating}` : "—"}
                                      </span>
                                    </TableCell>
                                  </TableRow>
                                )
                              })
                            )}
                          </TableBody>
                        </Table>
                      </div>
                    </div>

                    {/* Fases del Evento Seleccionado */}
                    <div className="rounded-xl border border-slate-200 overflow-hidden bg-white">
                      <div className="p-4 border-b border-slate-100 bg-slate-50 flex items-center justify-between gap-4">
                        <div className="truncate">
                          <p className="font-bold text-sm text-slate-900">Control por Fases</p>
                          <p className="text-xs text-slate-500 mt-0.5 truncate">
                            {selectedEvent ? selectedEvent.nombre : "Elige un evento de la tabla."}
                          </p>
                        </div>
                        {selectedEvent && (
                          <Button
                            variant="outline"
                            size="sm"
                            className="text-xs h-8"
                            onClick={() => window.open(`/events/${selectedEvent.id}`, "_self")}
                          >
                            Ver Actividad
                          </Button>
                        )}
                      </div>

                      {!selectedEvent ? (
                        <div className="text-sm text-muted-foreground py-20 text-center flex flex-col items-center justify-center gap-1">
                          <Star className="h-6 w-6 text-slate-300" />
                          <span className="text-xs">Elige una actividad para detallar.</span>
                        </div>
                      ) : (
                        <div className="p-4 space-y-4">
                          <div className="grid grid-cols-2 gap-3">
                            <div className="p-3 rounded-lg border border-slate-150 bg-slate-50">
                              <p className="text-[9px] uppercase font-bold text-slate-400">Total Asistencias</p>
                              <p className="text-lg font-black text-slate-950 mt-0.5">{selectedEvent.stats.total_attendances}</p>
                            </div>
                            <div className="p-3 rounded-lg border border-slate-150 bg-slate-50">
                              <p className="text-[9px] uppercase font-bold text-slate-400">Inscritos del Evento</p>
                              <p className="text-lg font-black text-slate-950 mt-0.5">{selectedEvent.stats.total_registrations}</p>
                            </div>
                          </div>

                          <div className="overflow-y-auto max-h-[170px]">
                            <Table>
                              <TableHeader>
                                <TableRow>
                                  <TableHead className="text-xs font-semibold text-slate-700 py-2">Fase</TableHead>
                                  <TableHead className="text-center text-xs font-semibold text-slate-700 py-2">Asistentes</TableHead>
                                  <TableHead className="text-center text-xs font-semibold text-slate-700 py-2">Rating</TableHead>
                                </TableRow>
                              </TableHeader>
                              <TableBody>
                                {selectedEvent.phases.length === 0 ? (
                                  <TableRow>
                                    <TableCell colSpan={3} className="text-center text-slate-400 py-6 text-xs">
                                      Este evento no cuenta con fases configuradas.
                                    </TableCell>
                                  </TableRow>
                                ) : (
                                  selectedEvent.phases.map(ph => (
                                    <TableRow key={ph.id} className="text-xs">
                                      <TableCell className="font-medium text-slate-900 py-2">{ph.name}</TableCell>
                                      <TableCell className="text-center text-slate-600 py-2">{ph.attendance_count}</TableCell>
                                      <TableCell className="text-center py-2">
                                        <span className="font-semibold text-slate-950 flex items-center justify-center gap-1">
                                          <Star className="h-3 w-3 text-yellow-500 fill-yellow-500" />
                                          {ph.avg_rating !== null ? `${ph.avg_rating}/5` : "—"}
                                        </span>
                                      </TableCell>
                                    </TableRow>
                                  ))
                                )}
                              </TableBody>
                            </Table>
                          </div>
                        </div>
                      )}
                    </div>
                  </div>
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      </div>
    </Section>
  )
}
