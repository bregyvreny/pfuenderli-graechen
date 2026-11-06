---
name: website-vorschau
description: Startet einen lokalen Server und zeigt die Website im Browser an, prüft Darstellung auf Handy-, Tablet- und Desktop-Breite und liest Konsolenfehler. Verwenden bei "zeig mir die Seite", "Vorschau", "wie sieht es aus", "teste im Browser", oder nach dem Bauen/Ändern einer Seite.
---

# Website-Vorschau

## Lokalen Server starten

Ein Server ist besser als `index.html` direkt zu öffnen (relative Pfade, Fetch, Fonts funktionieren korrekt).

1. Prüfen, ob `.claude/launch.json` existiert. Falls nicht, anlegen – je nach verfügbarem Werkzeug:
   ```json
   {
     "version": "0.0.1",
     "configurations": [
       { "name": "website", "runtimeExecutable": "npx",
         "runtimeArgs": ["--yes", "serve@14.2.4", "-l", "5510", "docs"], "port": 5510 }
     ]
   }
   ```
   Alternative ohne Node.js, falls Python installiert ist:
   `"runtimeExecutable": "python", "runtimeArgs": ["-m", "http.server", "5510", "-d", "docs"]`
   Der Server muss den Ordner `docs/` als Wurzel haben (wie GitHub Pages). Auf diesem PC (ohne Node/Python): `.claude/serve.ps1` über `.claude/launch.json`, Port 5510.
   Vorher mit `Get-Command node, python` prüfen, was vorhanden ist. Wenn nichts installiert ist, dem Benutzer erklären, wie Node.js installiert wird.
2. Mit dem Browser-Vorschau-Tool (`preview_start`, Name `website`) starten.

## Prüfen

1. Seite laden und Screenshot machen.
2. Breiten testen: Mobile (375 px), Tablet (768 px), Desktop. Danach Grösse wieder auf Desktop zurücksetzen.
3. Auf achten:
   - horizontales Scrollen auf Mobile (darf nicht vorkommen)
   - abgeschnittene oder überlappende Texte, zu kleine Schrift (< 16 px Fliesstext)
   - fehlende Bilder (404 in den Netzwerk-Anfragen)
   - Fehler in der Konsole
   - Navigation/Menü funktioniert, alle Links führen zu existierenden Seiten
4. Gefundene Probleme direkt beheben und erneut prüfen. Dem Benutzer kurz berichten, was geprüft und behoben wurde.
