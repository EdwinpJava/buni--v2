import { v4 as uuidv4 } from 'uuid';
import https from 'https';

export class Utils {
    static generateUUID() {
        return uuidv4();
    }

    static delay(time) {
        return new Promise(resolve => setTimeout(resolve, time));
    }

    static extractParticipantData(data) {
        // Normalizar todas las llaves del objeto (quitar espacios y convertir a minúsculas)
        const normalizedData = {};
        Object.keys(data).forEach(key => {
            normalizedData[key.trim().toLowerCase()] = data[key];
        });

        const email = normalizedData.correo || normalizedData.email || normalizedData.correo_electronico || null;
        
        const code = normalizedData.codigo || 
                     normalizedData.code || 
                     normalizedData['codigo estudiantil'] || 
                     normalizedData['numero de identificacion'] || 
                     normalizedData.documento || 
                     normalizedData.cedula || 
                     null;

        const name = normalizedData.nombre || 
                     normalizedData.name || 
                     normalizedData['nombre y apellidos'] || 
                     normalizedData.fullname || 
                     normalizedData.nombre_completo || 
                     'Sin nombre';

        const type = normalizedData.tipo || normalizedData.type || 'estudiante';
        
        return { 
            email: email, 
            code: code || email || Utils.generateUUID().substring(0, 8), 
            name: name, 
            type: type 
        };
    }

    static async convertToBase64(url) {
        return new Promise((resolve, reject) => {
            https.get(url, (response) => {
                const chunks = [];

                response.on('data', (chunk) => {
                    chunks.push(chunk);
                });

                response.on('end', () => {
                    const buffer = Buffer.concat(chunks);
                    const base64Image = buffer.toString('base64');
                    resolve(`data:image/png;base64,${base64Image}`);
                });

                response.on('error', (error) => {
                    reject(error);
                });
            });
        });
    }
}