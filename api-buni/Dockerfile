# API BUNI (Express + Socket.IO)
FROM node:22-slim

WORKDIR /app
ENV NODE_ENV=production

# Dependencias de produccion
COPY package*.json ./
RUN npm install --omit=dev --no-audit --no-fund && npm cache clean --force

# Codigo fuente
COPY src ./src

# Carpeta de archivos subidos (multer usa ./uploads)
RUN mkdir -p uploads && chown -R node:node /app
USER node

EXPOSE 4000

CMD ["node", "src/index.js"]
