export type ParticipantType = 'estudiante' | 'docente' | 'externo' | 'otro';

export interface Participant {
    id: string;
    name: string;
    code: string;
    email: string;
    type: ParticipantType;
    total_registrations: number;
    total_attendances: number;
    total_phases_available?: number;
    created_at: string;
}

export interface ParticipantHistory {
    id: string;
    participant_id: string;
    event_id: string;
    event_name: string;
    event_date: string;
    registered: boolean;
    attended: boolean;
    registration_date: string;
    attendance_date?: string;
}

export interface ParticipantProfile extends Participant {
    history: ParticipantHistory[];
}
