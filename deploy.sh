#!/bin/bash
# Ensure the script stops on errors (except the git pull which has a fallback)
set -e

# Navigate to the directory where the script is located
cd "$(dirname "$0")"

echo "Deploying in $(pwd)..."

# Hole den neuesten Code (falls du von lokal gepusht hast)
# Hinweis: Das setzt voraus, dass du lokal in ein Remote-Repo pushst.
# Wenn du direkt auf den Server pushst, ist der Code schon da.
git pull origin main 2>/dev/null || echo "Kein Remote-Update gefunden, nutze lokalen Stand."

# Baue den Container neu (Produktions-Modus)
docker compose up -d --build

echo "------------------------------------------"
echo "Website erfolgreich aktualisiert! 🚀"
echo "URL: https://junger-adfc-rhein-neckar.de"
echo "------------------------------------------"
