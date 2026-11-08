FROM node:22-slim

WORKDIR /app
ENV NODE_ENV=production

COPY package*.json ./
RUN npm install --omit=dev --no-audit --no-fund && npm cache clean --force

COPY src ./src

RUN mkdir -p uploads && chown -R node:node /app
USER node

EXPOSE 4000

CMD ["node", "src/index.js"]
