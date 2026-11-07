"use client"

import { useState } from "react"
import { Scanner } from "@yudiel/react-qr-scanner"
import { Button } from "@/components/ui/Button"
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/Dialog"
import { Event, EventPhase } from "@/types/Events"
import Cookies from "js-cookie"
import { useNotification } from "@/hooks/client/useNotification"
import { Loader2, CheckCircle2, AlertTriangle } from "lucide-react"

interface QRScannerDialogProps {
  open: boolean
  onOpenChange: (open: boolean) => void
  event: Event
  phase: EventPhase
  onScanSuccess?: () => void
}

export function QRScannerDialog({ open, onOpenChange, event, phase, onScanSuccess }: QRScannerDialogProps) {
  const { showNotification } = useNotification()
  const [isScanning, setIsScanning] = useState(true)
  const [isProcessing, setIsProcessing] = useState(false)
  const [lastScannedData, setLastScannedData] = useState<any>(null)
  const [scanResult, setScanResult] = useState<"success" | "error" | null>(null)
  const [scanMessage, setScanMessage] = useState("")

  const handleScan = async (detectedCodes: any[]) => {
    if (!isScanning || isProcessing || detectedCodes.length === 0) return

    const qrDataStr = detectedCodes[0].rawValue
    try {
      const qrData = JSON.parse(qrDataStr)
      
      // Basic validation
      if (!qrData.email && !qrData.code) {
        throw new Error("QR Invalido: Faltan datos del participante")
      }
      if (qrData.eventId !== event.id) {
        throw new Error("QR Invalido: Este pase pertenece a otro evento")
      }

      setIsProcessing(true)
      setIsScanning(false)
      setLastScannedData(qrData)

      // Send to backend
      const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/events/${event.id}/phases/${phase.id}/attendance`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${Cookies.get("token")}`,
        },
        body: JSON.stringify({
          participantData: {
            email: qrData.email,
            code: qrData.code
          },
          attended: true
        })
      })

      const data = await response.json()

      if (response.ok) {
        setScanResult("success")
        setScanMessage("Asistencia registrada correctamente")
        showNotification({
          title: "Éxito",
          message: "Asistencia registrada correctamente",
          type: "success"
        })
        if (onScanSuccess) {
          onScanSuccess()
        }
      } else {
        throw new Error(data.error || "Error al registrar asistencia")
      }
    } catch (error) {
      setScanResult("error")
      setScanMessage(error instanceof Error ? error.message : "Error al leer el código QR")
      setIsScanning(false)
    } finally {
      setIsProcessing(false)
    }
  }

  const handleContinueScanning = () => {
    setScanResult(null)
    setScanMessage("")
    setLastScannedData(null)
    setIsScanning(true)
  }

  return (
    <Dialog open={open} onOpenChange={(val) => {
        if (!val) {
            handleContinueScanning()
        }
        onOpenChange(val)
    }}>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>Escanear Asistencia</DialogTitle>
          <DialogDescription>
            Fase: <strong>{phase.name}</strong>
            <br/>
            Posiciona el código QR del estudiante frente a la cámara.
          </DialogDescription>
        </DialogHeader>
        
        <div className="flex flex-col items-center justify-center py-4 min-h-[300px]">
          {isScanning && !isProcessing && (
            <div className="w-full max-w-[300px] overflow-hidden rounded-lg">
              <Scanner
                onScan={handleScan}
                formats={["qr_code"]}
                components={{ audio: false, finder: true }}
              />
            </div>
          )}

          {isProcessing && (
            <div className="flex flex-col items-center justify-center space-y-4">
              <Loader2 className="h-12 w-12 animate-spin text-primary" />
              <p className="text-sm font-medium">Registrando asistencia...</p>
            </div>
          )}

          {scanResult === "success" && (
            <div className="flex flex-col items-center justify-center space-y-4 text-center">
              <div className="h-16 w-16 bg-green-100 rounded-full flex items-center justify-center">
                <CheckCircle2 className="h-10 w-10 text-green-600" />
              </div>
              <h3 className="text-xl font-bold text-green-600">¡Asistencia Confirmada!</h3>
              <p className="text-sm text-muted-foreground">{scanMessage}</p>
              {lastScannedData?.email && (
                <p className="text-sm font-medium mt-2">Estudiante: {lastScannedData.email}</p>
              )}
              <Button onClick={handleContinueScanning} className="mt-4">
                Escanear Otro
              </Button>
            </div>
          )}

          {scanResult === "error" && (
            <div className="flex flex-col items-center justify-center space-y-4 text-center">
              <div className="h-16 w-16 bg-red-100 rounded-full flex items-center justify-center">
                <AlertTriangle className="h-10 w-10 text-red-600" />
              </div>
              <h3 className="text-xl font-bold text-red-600">Error</h3>
              <p className="text-sm text-muted-foreground">{scanMessage}</p>
              <Button onClick={handleContinueScanning} variant="outline" className="mt-4 border-red-200 text-red-600 hover:bg-red-50">
                Intentar de Nuevo
              </Button>
            </div>
          )}
        </div>

        <DialogFooter>
          <Button variant="outline" onClick={() => onOpenChange(false)}>
            Cerrar
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  )
}
