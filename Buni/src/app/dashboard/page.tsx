"use client"

import { useCallback, useEffect, useMemo, useState } from "react"
import Cookies from "js-cookie"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/Card"
import { Button } from "@/components/ui/Button"
import Section from "@/components/ui/Section"
import CustomLoader from "@/components/ui/CustomLoader"
import { Bar, BarChart, ResponsiveContainer, XAxis, YAxis, Tooltip, Legend } from "recharts"
import { GraduationCap, Users, CalendarCheck, School, ShieldAlert } from "lucide-react"
import { useSocket } from "@/hooks/server/useSocket"

type ProgramParticipation = {
  carrera: string
  total_participants: number
  total_attendances: number
  semesters: Array<{
    semestre: number
    participants: number
    attendances: number
  }>
}

export default function DashboardPage() {
  const [programs, setPrograms] = useState<ProgramParticipation[]>([])
  const [programsLoading, setProgramsLoading] = useState(true)
  const [selectedProgram, setSelectedProgram] = useState<string>("")
  const [downloading, setDownloading] = useState<null | "weekly" | "semiannual">(null)
  const { socket } = useSocket()

  const loadPrograms = useCallback(async () => {
    setProgramsLoading(true)
    try {
      const res = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/analytics/participation/programs`, {
        headers: { Authorization: `Bearer ${Cookies.get("token")}` },
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json?.error || "No se pudo cargar la analítica por programa")
      const rows: ProgramParticipation[] = Array.isArray(json) ? json : []
      setPrograms(rows)
      setSelectedProgram((prev) => (prev && rows.some(r => r.carrera === prev) ? prev : (rows[0]?.carrera || "")))
    } catch (e) {
      console.error(e)
      setPrograms([])
      setSelectedProgram("")
    } finally {
      setProgramsLoading(false)
    }
  }, [])

  useEffect(() => {
    loadPrograms()
  }, [loadPrograms])

  useEffect(() => {
    if (!socket) return
    const handler = () => {
      // Refetch tras cambios globales (p.ej. creación de eventos / sincronizaciones)
      loadPrograms()
    }
    socket.on("UPDATE_DATA", handler)
    return () => {
      socket.off("UPDATE_DATA", handler)
    }
  }, [socket, loadPrograms])

  const selectedProgramData = useMemo(
    () => programs.find(p => p.carrera === selectedProgram) || null,
    [programs, selectedProgram]
  )

  // Calcular métricas globales de la universidad basadas en los programas cargados
  const globalStats = useMemo(() => {
    const totalCarreras = programs.length
    const totalParticipants = programs.reduce((acc, curr) => acc + (curr.total_participants || 0), 0)
    const totalAttendances = programs.reduce((acc, curr) => acc + (curr.total_attendances || 0), 0)
    return { totalCarreras, totalParticipants, totalAttendances }
  }, [programs])

  const semesterChartData = useMemo(() => {
    if (!selectedProgramData) return []
    const base = selectedProgramData.semesters || []
    
    // Crear un mapa para buscar rápidamente los datos de participación por semestre
    const semesterMap = new Map(base.map(s => [s.semestre, s]))
    const chartData = []

    // Mostrar semestres del 1 al 10 + no especificado
    for (let i = 1; i <= 10; i++) {
      const semData = semesterMap.get(i)
      chartData.push({
        name: `Semestre ${i}`,
        "Estudiantes Registrados": semData ? semData.participants : 0,
        "Asistencias Totales": semData ? semData.attendances : 0,
      })
    }

    const noSpec = semesterMap.get(0)
    if (noSpec) {
      chartData.push({
        name: "No Especificado",
        "Estudiantes Registrados": noSpec.participants,
        "Asistencias Totales": noSpec.attendances,
      })
    }

    return chartData
  }, [selectedProgramData])

  const downloadEventsReport = async (period: "weekly" | "semiannual") => {
    setDownloading(period)
    try {
      const res = await fetch(
        `${process.env.NEXT_PUBLIC_API_URL}/analytics/reports/events?period=${period}&format=csv`,
        {
          headers: { Authorization: `Bearer ${Cookies.get("token")}` },
        }
      )

      if (!res.ok) {
        const json = await res.json().catch(() => null)
        throw new Error(json?.error || "No se pudo descargar el informe")
      }

      const blob = await res.blob()
      const url = window.URL.createObjectURL(blob)

      const a = document.createElement("a")
      a.href = url
      a.download = `buni_informe_eventos_${period}.csv`
      document.body.appendChild(a)
      a.click()
      a.remove()
      window.URL.revokeObjectURL(url)
    } catch (e) {
      console.error(e)
      alert(e instanceof Error ? e.message : "Error descargando el informe")
    } finally {
      setDownloading(null)
    }
  }

  return (
    <Section>
      <div className="space-y-6">
        <div className="flex flex-col gap-3 sm:flex-row sm:items-end sm:justify-between">
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Dashboard General BUNI</h1>
            <p className="text-muted-foreground">
              Métricas clave y análisis visual de la participación estudiantil en eventos universitarios.
            </p>
          </div>

          <div className="flex flex-col sm:flex-row gap-2">
            <Button variant="outline" onClick={() => downloadEventsReport("weekly")} disabled={downloading !== null}>
              {downloading === "weekly" ? "Descargando..." : "Informe semanal (CSV)"}
            </Button>
            <Button variant="outline" onClick={() => downloadEventsReport("semiannual")} disabled={downloading !== null}>
              {downloading === "semiannual" ? "Descargando..." : "Informe semestral (CSV)"}
            </Button>
          </div>
        </div>

        {programsLoading ? (
          <div className="py-20"><CustomLoader /></div>
        ) : programs.length === 0 ? (
          <Card className="p-10 text-center flex flex-col items-center justify-center gap-2">
            <ShieldAlert className="h-10 w-10 text-slate-300" />
            <h3 className="text-lg font-bold text-slate-700">Sin información disponible</h3>
            <p className="text-sm text-slate-400">Registra participantes y eventos para ver la analítica aquí.</p>
          </Card>
        ) : (
          <div className="space-y-6">
            {/* Fila de Tarjetas KPI Globales */}
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
              <Card className="shadow-sm border-slate-200">
                <CardContent className="pt-6 flex items-center gap-4">
                  <div className="p-3 bg-blue-50 text-blue-600 rounded-xl">
                    <School className="h-6 w-6" />
                  </div>
                  <div>
                    <p className="text-xs uppercase font-bold text-slate-400 tracking-wider">Programas Académicos</p>
                    <p className="text-3xl font-black text-slate-900 mt-1">{globalStats.totalCarreras}</p>
                  </div>
                </CardContent>
              </Card>

              <Card className="shadow-sm border-slate-200">
                <CardContent className="pt-6 flex items-center gap-4">
                  <div className="p-3 bg-indigo-50 text-indigo-600 rounded-xl">
                    <Users className="h-6 w-6" />
                  </div>
                  <div>
                    <p className="text-xs uppercase font-bold text-slate-400 tracking-wider">Participantes Únicos</p>
                    <p className="text-3xl font-black text-slate-900 mt-1">{globalStats.totalParticipants}</p>
                  </div>
                </CardContent>
              </Card>

              <Card className="shadow-sm border-slate-200">
                <CardContent className="pt-6 flex items-center gap-4">
                  <div className="p-3 bg-emerald-50 text-emerald-600 rounded-xl">
                    <CalendarCheck className="h-6 w-6" />
                  </div>
                  <div>
                    <p className="text-xs uppercase font-bold text-slate-400 tracking-wider">Asistencias Totales</p>
                    <p className="text-3xl font-black text-slate-900 mt-1">{globalStats.totalAttendances}</p>
                  </div>
                </CardContent>
              </Card>
            </div>

            {/* Análisis Académico de Participación */}
            <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
              {/* Carreras listadas */}
              <Card className="lg:col-span-4 shadow-sm border-slate-200">
                <CardHeader className="flex flex-col gap-1 pb-4">
                  <CardTitle className="flex items-center gap-2 text-lg font-bold">
                    <GraduationCap className="h-5 w-5 text-primary" /> Participación por Carrera
                  </CardTitle>
                  <CardDescription className="text-xs">
                    Muestra el volumen acumulado de estudiantes y asistencias registradas.
                  </CardDescription>
                </CardHeader>
                <CardContent className="px-4">
                  <div className="space-y-2 max-h-[500px] overflow-y-auto pr-1">
                    {programs.map((p) => {
                      const isActive = p.carrera === selectedProgram
                      return (
                        <div
                          key={p.carrera}
                          className={`p-3.5 rounded-xl border transition-all duration-200 flex flex-col justify-between gap-3 ${
                            isActive 
                              ? "bg-slate-900 border-slate-900 text-white shadow-md" 
                              : "bg-white border-slate-200 text-slate-900 hover:border-slate-300"
                          }`}
                        >
                          <div className="flex items-start justify-between gap-2">
                            <div>
                              <p className="font-semibold text-sm leading-tight">{p.carrera}</p>
                              <p className={`text-xs mt-1 ${isActive ? "text-slate-300" : "text-slate-500"}`}>
                                Alumnos únicos: {p.total_participants}
                              </p>
                            </div>
                            <div className="text-right">
                              <p className="text-lg font-black">{p.total_attendances}</p>
                              <p className={`text-[10px] ${isActive ? "text-slate-300" : "text-slate-400"}`}>asistencias</p>
                            </div>
                          </div>
                          <div className="flex items-center justify-end">
                            <button 
                              onClick={() => setSelectedProgram(p.carrera)}
                              className={`text-xs px-3 py-1.5 rounded-lg font-medium transition-colors ${
                                isActive 
                                  ? "bg-white text-slate-900 hover:bg-slate-100" 
                                  : "bg-slate-50 text-slate-700 hover:bg-slate-100 border border-slate-200"
                              }`}
                            >
                              Ver Gráfica Semestral
                            </button>
                          </div>
                        </div>
                      )
                    })}
                  </div>
                </CardContent>
              </Card>

              {/* Detalle por Semestre */}
              <Card className="lg:col-span-8 shadow-sm border-slate-200">
                <CardHeader className="flex flex-col gap-1 pb-4">
                  <CardTitle className="text-lg font-bold">Desglose por Semestre</CardTitle>
                  <CardDescription className="text-xs">
                    {selectedProgramData ? `Visualizando el programa de: ${selectedProgramData.carrera}` : "Por favor selecciona una carrera."}
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  {!selectedProgramData ? (
                    <div className="text-sm text-muted-foreground py-20 text-center">
                      Elige una carrera a la izquierda para proyectar sus estadísticas semestrales.
                    </div>
                  ) : (
                    <div className="space-y-6">
                      {/* Sub-KPIs de la carrera */}
                      <div className="grid grid-cols-3 gap-4">
                        <div className="p-3 bg-slate-50 rounded-xl border border-slate-100">
                          <p className="text-[10px] font-bold text-slate-400 uppercase tracking-wide">Asistencias</p>
                          <p className="text-xl font-extrabold text-slate-900 mt-0.5">{selectedProgramData.total_attendances}</p>
                        </div>
                        <div className="p-3 bg-slate-50 rounded-xl border border-slate-100">
                          <p className="text-[10px] font-bold text-slate-400 uppercase tracking-wide">Estudiantes</p>
                          <p className="text-xl font-extrabold text-slate-900 mt-0.5">{selectedProgramData.total_participants}</p>
                        </div>
                        <div className="p-3 bg-slate-50 rounded-xl border border-slate-100">
                          <p className="text-[10px] font-bold text-slate-400 uppercase tracking-wide">Semestres Activos</p>
                          <p className="text-xl font-extrabold text-slate-900 mt-0.5">{selectedProgramData.semesters.length}</p>
                        </div>
                      </div>

                      {/* Gráfica Recharts */}
                      <div className="h-[350px] rounded-xl border border-slate-200 p-4 bg-white shadow-inner">
                        <ResponsiveContainer width="100%" height="100%">
                          <BarChart data={semesterChartData} margin={{ top: 10, right: 10, left: -20, bottom: 0 }}>
                            <XAxis dataKey="name" tick={{ fontSize: 10, fill: '#64748b' }} interval={0} />
                            <YAxis allowDecimals={false} tick={{ fontSize: 10, fill: '#64748b' }} />
                            <Tooltip contentStyle={{ fontSize: 12, borderRadius: 8 }} />
                            <Legend wrapperStyle={{ fontSize: 11, paddingTop: 10 }} />
                            <Bar dataKey="Estudiantes Registrados" fill="#3b82f6" radius={[4, 4, 0, 0]} />
                            <Bar dataKey="Asistencias Totales" fill="#10b981" radius={[4, 4, 0, 0]} />
                          </BarChart>
                        </ResponsiveContainer>
                      </div>

                      <div className="rounded-xl border border-blue-100 bg-blue-50/50 p-4 text-xs text-blue-800 leading-relaxed">
                        <strong>Nota de análisis:</strong> La gráfica compara el número de estudiantes registrados en el sistema frente a las asistencias reales registradas en las fases de eventos para cada uno de los semestres.
                      </div>
                    </div>
                  )}
                </CardContent>
              </Card>
            </div>
          </div>
        )}
      </div>
    </Section>
  )
}
