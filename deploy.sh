#!/bin/bash
# Gehe ins Verzeichnis
cd /home/marcodeuritz/anytype/website

# Hole den neuesten Code (falls du von lokal gepusht hast)
# Hinweis: Das setzt voraus, dass du lokal in ein Remote-Repo pushst.
# Wenn du direkt auf den Server pushst, ist der Code schon da.
git pull origin master 2>/dev/null || echo "Kein Remote-Update gefunden, nutze lokalen Stand."

# Baue den Container neu (Produktions-Modus)
docker compose up -d --build

echo "------------------------------------------"
echo "Website erfolgreich aktualisiert! 🚀"
echo "URL: https://junger-adfc-rhein-neckar.de"
echo "------------------------------------------"
