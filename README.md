# BUNI V2

Aplicacion web para la gestion de eventos, formularios, programas y usuarios.

## Estructura

- `Buni/`: frontend Next.js, React, TypeScript y Tailwind CSS.
- `api-buni/`: API Express con MySQL, autenticacion JWT y Socket.IO.
- `docs/`: documentacion oficial del proyecto.

## Desarrollo local

### Frontend

```powershell
cd Buni
npm install
npm run dev
```

### API

```powershell
cd api-buni
npm install
npm run dev
```

Configura las variables de entorno usando `Buni/README_ENV.md` y
`api-buni/README_ENV.md`. Los archivos `.env` no se versionan.

## Produccion

El frontend y la API se despliegan como servicios separados. En la API usa
`node src/index.js` como comando de inicio de produccion y configura las
variables privadas del servidor y la conexion MySQL.
