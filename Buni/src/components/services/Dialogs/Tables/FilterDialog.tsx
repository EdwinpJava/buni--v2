"use client"

import { useState } from "react"
import { Button } from "@/components/ui/Button"
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogFooter } from "@/components/ui/Dialog"
import { Input } from "@/components/ui/Input"
import { Label } from "@/components/ui/Label"
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/Select"

interface FilterDialogProps {
  open: boolean
  onOpenChange: (open: boolean) => void
  column: string | null
  onFilter: (value: string) => void
  onSort: (direction: "asc" | "desc" | null) => void
}

export function FilterDialog({ open, onOpenChange, column, onFilter, onSort }: FilterDialogProps) {
  const [filterValue, setFilterValue] = useState("")
  const [sortDirection, setSortDirection] = useState<"asc" | "desc" | null>(null)
  const [year, setYear] = useState("")
  const [month, setMonth] = useState("")
  const [day, setDay] = useState("")

  const columnLabel = column?.toLowerCase() || ""
  const isDateField = columnLabel.includes("horario") || columnLabel.includes("fecha")
  const isStatusField = columnLabel === "estado" || columnLabel === "state"

  const handleFilter = () => {
    if (isDateField) {
      let filterString = ""
      const y = year.trim()
      const m = month.trim().padStart(2, "0")
      const d = day.trim().padStart(2, "0")

      if (y && month.trim() && day.trim()) {
        filterString = `${y}-${m}-${d}` // Año+Mes+Día → YYYY-MM-DD
      } else if (y && month.trim()) {
        filterString = `${y}-${m}` // Año+Mes → YYYY-MM
      } else if (y) {
        filterString = y // Solo Año → YYYY
      } else if (month.trim() && day.trim()) {
        filterString = `${d}/${m}` // Mes+Día → DD/MM
      } else if (month.trim()) {
        filterString = `/${m}/` // Solo Mes → /MM/
      } else if (day.trim()) {
        filterString = `${d}/` // Solo Día
      }
      onFilter(filterString)
    } else {
      onFilter(filterValue)
    }
    onSort(sortDirection)
    setFilterValue("")
    setYear("")
    setMonth("")
    setDay("")
    setSortDirection(null)
    onOpenChange(false)
  }

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-[400px]">
        <DialogHeader>
          <DialogTitle>Filtrar y ordenar por {column}</DialogTitle>
        </DialogHeader>
        <div className="grid gap-6 py-4">
          {isStatusField ? (
            <div className="grid gap-2">
              <Label htmlFor="status-filter">Seleccionar estado</Label>
              <Select onValueChange={setFilterValue} value={filterValue}>
                <SelectTrigger id="status-filter">
                  <SelectValue placeholder="Todos los estados" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="activo">Activo</SelectItem>
                  <SelectItem value="inactivo">Inactivo</SelectItem>
                </SelectContent>
              </Select>
            </div>
          ) : isDateField ? (
            <div className="grid gap-4">
              <Label>Filtrar por fecha</Label>
              <div className="grid grid-cols-3 gap-2">
                <div className="grid gap-1.5">
                  <Label htmlFor="day" className="text-xs">Día</Label>
                  <Input
                    id="day"
                    type="number"
                    min="1"
                    max="31"
                    value={day}
                    onChange={(e) => setDay(e.target.value)}
                    placeholder="DD"
                  />
                </div>
                <div className="grid gap-1.5">
                  <Label htmlFor="month" className="text-xs">Mes</Label>
                  <Input
                    id="month"
                    type="number"
                    min="1"
                    max="12"
                    value={month}
                    onChange={(e) => setMonth(e.target.value)}
                    placeholder="MM"
                  />
                </div>
                <div className="grid gap-1.5">
                  <Label htmlFor="year" className="text-xs">Año</Label>
                  <Input
                    id="year"
                    type="number"
                    value={year}
                    onChange={(e) => setYear(e.target.value)}
                    placeholder="YYYY"
                  />
                </div>
              </div>
              <p className="text-[10px] text-muted-foreground italic">
                * Puedes llenar solo los campos que necesites.
              </p>
            </div>
          ) : (
            <div className="grid gap-2">
              <Label htmlFor="filterValue">Buscar</Label>
              <Input
                id="filterValue"
                value={filterValue}
                onChange={(e) => setFilterValue(e.target.value)}
                placeholder={`Buscar por ${column}...`}
              />
            </div>
          )}
          <div className="grid gap-2">
            <Label>Ordenar</Label>
            <div className="flex space-x-2">
              <Button
                variant={sortDirection === "asc" ? "default" : "outline"}
                onClick={() => setSortDirection("asc")}
                className="flex-1"
              >
                Ascendente
              </Button>
              <Button
                variant={sortDirection === "desc" ? "default" : "outline"}
                onClick={() => setSortDirection("desc")}
                className="flex-1"
              >
                Descendente
              </Button>
            </div>
          </div>
        </div>
        <DialogFooter>
          <Button variant="outline" onClick={() => onOpenChange(false)}>
            Cancelar
          </Button>
          <Button onClick={handleFilter}>Aplicar</Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  )
}

