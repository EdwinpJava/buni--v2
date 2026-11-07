import { Participant, ParticipantProfile } from "@/types/Participant";
import { useState } from "react";
import Cookies from "js-cookie";

const useParticipants = () => {
    const [participants, setParticipants] = useState<Participant[]>([]);
    const [pagination, setPagination] = useState({
        total: 0,
        page: 1,
        limit: 10,
        totalPages: 0
    });

    const getParticipants = async (search: string = "", page: number = 1, limit: number = 10) => {
        try {
            console.log(`Fetching participants: search="${search}", page=${page}, limit=${limit}`);
            const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/participants?search=${search}&page=${page}&limit=${limit}`, {
                headers: {
                    "Authorization": `Bearer ${Cookies.get("token")}`
                }
            });
            const result = await response.json();
            console.log("Participants result:", result);
            
            if (result && result.data && Array.isArray(result.data)) {
                setParticipants(result.data);
                setPagination({
                    total: result.total || 0,
                    page: Number(result.page) || 1,
                    limit: Number(result.limit) || 10,
                    totalPages: Number(result.totalPages) || 0
                });
            } else if (Array.isArray(result)) {
                // Compatibilidad con versión anterior por si acaso
                setParticipants(result);
                setPagination({
                    total: result.length,
                    page: 1,
                    limit: result.length,
                    totalPages: 1
                });
            } else {
                setParticipants([]);
            }
        } catch (error) {
            console.error("Error fetching participants:", error);
            setParticipants([]);
        }
    };

    const getParticipantById = async (id: string): Promise<ParticipantProfile | null> => {
        try {
            const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/participants/${id}`, {
                headers: {
                    "Authorization": `Bearer ${Cookies.get("token")}`
                }
            });
            return await response.json();
        } catch (error) {
            console.error(error);
            return null;
        }
    };

    return { participants, pagination, getParticipants, getParticipantById };
};

export default useParticipants;
