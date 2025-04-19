import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// Déterminer le base path en fonction de l'environnement
// En production (GitHub Pages), utiliser le nom du repo comme base path
// En développement, utiliser '/'
const base = process.env.NODE_ENV === 'production' ? '/findgold/' : '/';

export default defineConfig({
  plugins: [react()],
  server: {
    port: 5173,
    host: true,
    open: true
  },
  define: {
    // Suppression de la définition incorrecte de process.env
    // Vite utilise import.meta.env au lieu de process.env
  },
  base: base, // Base path pour GitHub Pages
  envPrefix: 'VITE_'
});
