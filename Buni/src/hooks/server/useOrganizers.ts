"use client"

import { useCallback, useState } from "react"
import Cookies from "js-cookie"

export interface EligibleOrganizer {
  id: string
  name: string
  email: string
  role: string | null
}

export function useOrganizers() {
  const [organizers, setOrganizers] = useState<EligibleOrganizer[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const fetchEligibleOrganizers = useCallback(async () => {
    const token = Cookies.get("token")
    if (!token) {
      setError("No hay token de autenticación")
      return []
    }

    setLoading(true)
    setError(null)

    try {
      const response = await fetch(
        `${process.env.NEXT_PUBLIC_API_URL}/events/organizers/eligible`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }
      )

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.error || "No se pudieron cargar los organizadores")
      }

      const list = Array.isArray(data) ? data : data.data ?? []
      setOrganizers(list)
      return list as EligibleOrganizer[]
    } catch (err) {
      const message = err instanceof Error ? err.message : "Error al cargar organizadores"
      setError(message)
      setOrganizers([])
      return []
    } finally {
      setLoading(false)
    }
  }, [])

  return { organizers, loading, error, fetchEligibleOrganizers }
}
