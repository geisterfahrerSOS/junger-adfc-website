import { sveltekit } from '@sveltejs/kit/vite';
import tailwindcss from '@tailwindcss/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [tailwindcss(), sveltekit()],
	server: {
		watch: {
			usePolling: true,
		},
		hmr: {
			// Wir zwingen HMR auf den Standard-Port, damit der SSH-Tunnel 
			// (localhost:5173) perfekt funktioniert.
			clientPort: 5173,
		},
	}
});
