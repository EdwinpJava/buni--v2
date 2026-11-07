"use client"

import { useState, useEffect } from "react"
import { Card, CardContent } from "@/components/ui/Card"
import { Users, Search, CalendarCheck, ClipboardList, ChevronLeft, ChevronRight } from "lucide-react"
import { Button } from "@/components/ui/Button"
import { Input } from "@/components/ui/Input"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/Table"
import Section from "@/components/ui/Section"
import useParticipants from "@/hooks/server/useParticipants"
import { Badge } from "@/components/ui/Badge"
import { useRouter } from "next/navigation"
import CustomLoader from "@/components/ui/CustomLoader"
import Cookies from "js-cookie"

export default function ParticipantsPage() {
    const router = useRouter()
    const { participants, pagination, getParticipants } = useParticipants()
    const [searchTerm, setSearchTerm] = useState("")
    const [isLoading, setIsLoading] = useState(true)
    const [isSyncing, setIsSyncing] = useState(false)
    const [currentPage, setCurrentPage] = useState(1)
    const [itemsPerPage, setItemsPerPage] = useState(10)

    // Resetear a la página 1 cuando cambia el término de búsqueda
    useEffect(() => {
        setCurrentPage(1)
    }, [searchTerm])

    const handleSync = async () => {
        setIsSyncing(true)
        try {
            const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/participants/sync`, {
                method: 'POST',
                headers: {
                    "Authorization": `Bearer ${Cookies.get("token")}`
                }
            })
            const data = await response.json()
            alert(data.message)
            await getParticipants(searchTerm, 1, itemsPerPage)
            setCurrentPage(1)
        } catch (error) {
            console.error(error)
            alert("Error al sincronizar datos")
        } finally {
            setIsSyncing(false)
        }
    }

    useEffect(() => {
        const fetchData = async () => {
            setIsLoading(true)
            await getParticipants(searchTerm, currentPage, itemsPerPage)
            setIsLoading(false)
        }
        
        const timeoutId = setTimeout(fetchData, 500)
        return () => clearTimeout(timeoutId)
    }, [searchTerm, currentPage, itemsPerPage])

    const handlePageChange = (newPage: number) => {
        if (newPage >= 1 && newPage <= (pagination.totalPages || 1)) {
            console.log(`Changing to page ${newPage}`);
            setCurrentPage(newPage)
            setIsLoading(true) // Mostrar feedback de carga
        }
    }

    const handleItemsPerPageChange = (value: string) => {
        const newLimit = parseInt(value)
        console.log(`Changing items per page to ${newLimit}`);
        setItemsPerPage(newLimit)
        setCurrentPage(1)
        setIsLoading(true)
    }

    if (isLoading && participants.length === 0) return <CustomLoader />

    return (
        <Section>
            <div className="space-y-6">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Área de Participantes</h2>
                    <p className="text-muted-foreground">Listado único de personas registradas en el sistema y su actividad histórica.</p>
                </div>
                
                {/* Buscador */}
                <Card className="mb-6">
                    <CardContent className="pt-6">
                        <div className="flex flex-col md:flex-row gap-4">
                            <div className="relative flex-1">
                                <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                                <Input 
                                    placeholder="Buscar por nombre, código o correo electrónico..." 
                                    className="pl-10"
                                    value={searchTerm}
                                    onChange={(e) => setSearchTerm(e.target.value)}
                                />
                            </div>
                            <Button variant="outline" className="gap-2" onClick={handleSync} loading={isSyncing}>
                                <Users className="h-4 w-4" /> Sincronizar Registros Legacy
                            </Button>
                        </div>
                    </CardContent>
                </Card>

                {/* Tabla de Participantes */}
                <Card>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead>Nombre del Participante</TableHead>
                                <TableHead>Código / ID</TableHead>
                                <TableHead>Tipo</TableHead>
                                <TableHead className="text-center">Inscripciones</TableHead>
                                <TableHead className="text-center">Asistencias</TableHead>
                                <TableHead className="text-right">Acciones</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {participants.length > 0 ? (
                                participants.map((p) => {
                                    const attended = Number(p.total_attendances) || 0
                                    const registered = Number(p.total_registrations) || 0

                                    return (
                                        <TableRow key={p.id} className="cursor-pointer hover:bg-muted/50" onClick={() => router.push(`/participantes/${p.id}`)}>
                                            <TableCell className="font-medium">{p.name}</TableCell>
                                            <TableCell className="text-muted-foreground">{p.code}</TableCell>
                                            <TableCell>
                                                <Badge variant="outline" className="capitalize">{p.type}</Badge>
                                            </TableCell>
                                            <TableCell className="text-center">
                                                <div className="flex items-center justify-center gap-1 text-blue-600 font-semibold">
                                                    <ClipboardList className="h-3 w-3" />
                                                    {registered}
                                                </div>
                                            </TableCell>
                                            <TableCell className="text-center">
                                                <div className="flex items-center justify-center gap-1 text-green-600 font-semibold">
                                                    <CalendarCheck className="h-3 w-3" />
                                                    {attended}
                                                </div>
                                            </TableCell>
                                            <TableCell className="text-right">
                                                <Button variant="ghost" size="sm">Ver Historial</Button>
                                            </TableCell>
                                        </TableRow>
                                    )
                                })
                            ) : (
                                <TableRow>
                                    <TableCell colSpan={6} className="text-center py-10 text-muted-foreground">
                                        No se encontraron personas registradas con ese criterio.
                                    </TableCell>
                                </TableRow>
                            )}
                        </TableBody>
                    </Table>

                    {/* Controles de Paginación */}
                    {pagination.totalPages > 0 && (
                        <div className="flex flex-col sm:flex-row items-center justify-between px-4 py-4 border-t gap-4">
                            <div className="flex items-center gap-2 text-sm text-muted-foreground">
                                <span>Mostrar</span>
                                <select 
                                    value={itemsPerPage} 
                                    onChange={(e) => handleItemsPerPageChange(e.target.value)}
                                    className="h-8 w-[70px] rounded-md border border-input bg-background px-2 py-1 text-sm focus:outline-none focus:ring-2 focus:ring-ring"
                                >
                                    <option value="10">10</option>
                                    <option value="20">20</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                </select>
                                <span>por página. Total: {pagination.total}</span>
                            </div>

                            <div className="flex items-center gap-4">
                                <div className="text-sm font-medium">
                                    Página {currentPage} de {pagination.totalPages}
                                </div>
                                <div className="flex items-center gap-2">
                                    <Button 
                                        variant="outline" 
                                        size="sm" 
                                        onClick={() => handlePageChange(currentPage - 1)}
                                        disabled={currentPage === 1 || isLoading}
                                    >
                                        <ChevronLeft className="h-4 w-4 mr-1" /> Anterior
                                    </Button>
                                    <Button 
                                        variant="outline" 
                                        size="sm" 
                                        onClick={() => handlePageChange(currentPage + 1)}
                                        disabled={currentPage >= pagination.totalPages || isLoading}
                                    >
                                        Siguiente <ChevronRight className="h-4 w-4 ml-1" />
                                    </Button>
                                </div>
                            </div>
                        </div>
                    )}
                </Card>
            </div>
        </Section>
    )
}
