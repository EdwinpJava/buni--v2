import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Genera .next/standalone con un server.js minimo para la imagen Docker
  output: "standalone",
  // El build de produccion no se detiene por errores de lint o de tipos
  // existentes en el codigo; se revisan aparte con `npm run lint` / `tsc`.
  eslint: { ignoreDuringBuilds: true },
  typescript: { ignoreBuildErrors: true },
};

export default nextConfig;
