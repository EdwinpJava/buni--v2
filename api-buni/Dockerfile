# Imagen base de Node.js
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Compilar TypeScript si el proyecto lo requiere
RUN npm run build --if-present

# Exponer el puerto
EXPOSE 3000

# Comando de arranque
CMD ["npm", "start"]
