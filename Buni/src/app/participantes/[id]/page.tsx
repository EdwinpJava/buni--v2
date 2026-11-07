"use client"

import { useState, useEffect } from "react"
import { useParams, useRouter } from "next/navigation"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/Card"
import { ArrowLeft, User, Mail, IdCard, Calendar, CheckCircle2, ClipboardList, Clock } from "lucide-react"
import { Button } from "@/components/ui/Button"
import useParticipants from "@/hooks/server/useParticipants"
import { ParticipantProfile } from "@/types/Participant"
import CustomLoader from "@/components/ui/CustomLoader"
import { Badge } from "@/components/ui/Badge"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/Table"

export default function ParticipantProfilePage() {
    const { id } = useParams()
    const router = useRouter()
    const { getParticipantById } = useParticipants()
    const [profile, setProfile] = useState<ParticipantProfile | null>(null)
    const [isLoading, setIsLoading] = useState(true)

    useEffect(() => {
        const fetchData = async () => {
            if (id) {
                const data = await getParticipantById(id as string)
                setProfile(data)
            }
            setIsLoading(false)
        }
        fetchData()
    }, [id])

    if (isLoading) return <CustomLoader />
    if (!profile) return <div className="p-10 text-center">Participante no encontrado</div>

    return (
        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <Button variant="outline" size="icon" onClick={() => router.back()}>
                    <ArrowLeft className="h-4 w-4" />
                </Button>
                <div>
                    <h1 className="text-2xl font-bold">Historial de Actividad</h1>
                    <p className="text-muted-foreground">{profile.name} ({profile.code})</p>
                </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
                {/* Perfil Rápido */}
                <Card className="lg:col-span-1">
                    <CardHeader>
                        <CardTitle className="flex items-center gap-2 text-lg">
                            <User className="h-5 w-5 text-primary" /> Datos del Participante
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-4">
                        <div className="grid grid-cols-1 gap-4">
                            <div className="flex items-center gap-3">
                                <Mail className="h-4 w-4 text-muted-foreground" />
                                <div>
                                    <p className="text-[10px] uppercase font-bold text-muted-foreground">Correo</p>
                                    <p className="text-sm font-medium">{profile.email}</p>
                                </div>
                            </div>
                            <div className="flex items-center gap-3">
                                <IdCard className="h-4 w-4 text-muted-foreground" />
                                <div>
                                    <p className="text-[10px] uppercase font-bold text-muted-foreground">Tipo de Usuario</p>
                                    <Badge variant="secondary" className="capitalize">{profile.type}</Badge>
                                </div>
                            </div>
                            <div className="flex items-center gap-3">
                                <Clock className="h-4 w-4 text-muted-foreground" />
                                <div>
                                    <p className="text-[10px] uppercase font-bold text-muted-foreground">Registrado desde</p>
                                    <p className="text-sm font-medium">{new Date(profile.created_at).toLocaleDateString()}</p>
                                </div>
                            </div>
                        </div>

                        <div className="pt-4 mt-4 border-t grid grid-cols-2 gap-2">
                            <div className="bg-blue-50 p-2.5 rounded-lg text-center">
                                <p className="text-[9px] text-blue-600 font-bold uppercase">Registros</p>
                                <p className="text-xl font-black text-blue-800">{profile.total_registrations}</p>
                            </div>
                            <div className="bg-green-50 p-2.5 rounded-lg text-center">
                                <p className="text-[9px] text-green-600 font-bold uppercase">Asistencias</p>
                                <p className="text-xl font-black text-green-800">{profile.total_attendances}</p>
                            </div>
                        </div>
                    </CardContent>
                </Card>

                {/* Tabla de Historial Detallado */}
                <Card className="lg:col-span-2">
                    <CardHeader>
                        <CardTitle className="flex items-center gap-2 text-lg">
                            <Calendar className="h-5 w-5 text-primary" /> Eventos Relacionados
                        </CardTitle>
                    </CardHeader>
                    <CardContent>
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Nombre del Evento</TableHead>
                                    <TableHead>Fecha Evento</TableHead>
                                    <TableHead className="text-center">Estado</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {profile.history.map((item) => (
                                    <TableRow key={item.id}>
                                        <TableCell className="font-medium">{item.event_name}</TableCell>
                                        <TableCell>{new Date(item.event_date).toLocaleDateString()}</TableCell>
                                        <TableCell>
                                            <div className="flex items-center justify-center gap-2">
                                                {item.registered && (
                                                    <Badge className="bg-blue-100 text-blue-800 border-blue-200">
                                                        <ClipboardList className="h-3 w-3 mr-1" /> Registrado
                                                    </Badge>
                                                )}
                                                {item.attended ? (
                                                    <Badge className="bg-green-100 text-green-800 border-green-200">
                                                        <CheckCircle2 className="h-3 w-3 mr-1" /> Asistió
                                                    </Badge>
                                                ) : (
                                                    <Badge variant="outline" className="text-muted-foreground italic">
                                                        No asistió
                                                    </Badge>
                                                )}
                                            </div>
                                        </TableCell>
                                    </TableRow>
                                ))}
                                {profile.history.length === 0 && (
                                    <TableRow>
                                        <TableCell colSpan={3} className="text-center py-10 text-muted-foreground">
                                            Este participante no tiene actividad registrada aún.
                                        </TableCell>
                                    </TableRow>
                                )}
                            </TableBody>
                        </Table>
                    </CardContent>
                </Card>
            </div>
        </div>
    )
}
