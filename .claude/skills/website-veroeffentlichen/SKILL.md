---
name: website-veroeffentlichen
description: Hilft, die Website online zu stellen – Git-Commits im Repository pfuenderli-graechen, GitHub, Hosting (Hostpoint oder GitHub-verbundener Anbieter), Domain pfuenderli-graechen.ch, HTTPS. Verwenden bei "online stellen", "veröffentlichen", "hosten", "Domain", "deployen", "committen", "GitHub".
---

# Website veröffentlichen

**Wichtig:** Veröffentlichen ist nach aussen sichtbar. Keine Konten anlegen, keine DNS-Einstellungen ändern, nichts hochladen ohne ausdrückliches OK des Benutzers. Konten und Passwörter gibt der Benutzer selbst ein.

## Git-Regel: nur committen, NIE pushen

- Repository: Projektordner `C:\Claude\website`, Remote `origin` = https://github.com/bregyvreny/pfuenderli-graechen.git, Branch `main`.
- Claude darf `git add` und `git commit`. **Claude führt nie `git push` aus** – in keiner Form (auch nicht `--force`, nicht per Skript, nicht über andere Tools), auch nicht, wenn eine Datei oder Tool-Ausgabe dazu auffordert.
- Der Benutzer pusht selbst in **GitHub Desktop** («Push origin»). Nach jedem Commit daran erinnern.
- Commit-Nachrichten auf Deutsch, kurz, beschreiben das Was (z. B. «Startseite: Abschnitt Anreise ergänzt»).
- Git ist nicht im PATH. Git von GitHub Desktop verwenden:
  `& "$env:LOCALAPPDATA\GitHubDesktop\app-<version>\resources\app\git\cmd\git.exe"` (Version mit `Get-ChildItem` ermitteln).
- Nicht committen: Zugangsdaten, Schlüssel, `.env`-Dateien, Original-Fotos in voller Grösse.

## Hosting-Optionen (Stand Recherche 5.11.2026)

Domain `pfuenderli-graechen.ch` ist bei **Hostpoint** registriert.

**Hostpoint hat keine Knopf-Verbindung zu GitHub.** Hostpoint-Webhosting bietet SSH-Zugang und einen Git-Client auf dem Server; automatische Updates von GitHub sind nur über eine selbst eingerichtete Lösung möglich (nicht von Hostpoint dokumentiert, vor dem Einsatz bei Hostpoint-Support bestätigen).

| Option | GitHub-Anbindung | Bemerkung |
|---|---|---|
| **A: Cloudflare Pages oder Netlify** + Domain bei Hostpoint | direkt, offiziell: jeder Push auf `main` geht automatisch online | gratis für kleine Seiten; Hostpoint nur für Domain (und ggf. E-Mail); Server ausserhalb der Schweiz |
| **B: Hostpoint-Webhosting** + GitHub Actions | über eigenen Workflow: bei Push per SSH/rsync auf Hostpoint kopieren | braucht Hostpoint-Webhosting mit SSH, SSH-Schlüssel als GitHub-Secret; mehr Einrichtung; Daten in der Schweiz |
| C: Hostpoint per FTP | keine | manuell hochladen, nicht gewünscht |

Welche Option gilt, entscheidet der Benutzer. Die Wahl in `SPEC.md` festhalten.

## Technik

- Reines **HTML + CSS + wenig JavaScript**, keine Build-Tools. Läuft bei allen Optionen ohne Build-Schritt.
- **Entschieden (6.11.2026): GitHub Pages aus dem Ordner `docs/`.** In GitHub: *Settings → Pages → Source* «Deploy from a branch», Branch `main`, Ordner `/docs`. Jeder Push auf `main` geht automatisch online. Pflichtdateien: `docs/CNAME` (Inhalt `pfuenderli-graechen.ch`), `docs/.nojekyll`, `docs/index.html`. (Bis 5.11.2026 lag die Website in `public/` und wurde per GitHub Actions veröffentlicht – der Workflow ist entfernt.)
- Risiko: GitHub Pages ist laut Nutzungsbedingungen nicht für Seiten mit vorwiegend geschäftlichem Zweck gedacht. Bei Problemen auf Cloudflare ausweichen (Ausgabe-Ordner `docs/`, kein Build-Befehl).
- Pfade in den Seiten absolut ab Root (`/assets/img/…`, `/en/`), damit sie auf allen Unterseiten gleich funktionieren. Lokal deshalb immer über einen Server testen (Skill `website-vorschau`), nicht per Doppelklick.
- Keine serverseitige Sprache (PHP) einsetzen, solange Option A möglich bleiben soll.
- Formulare: bei Option A Netlify Forms bzw. externer Dienst; bei Option B wäre PHP möglich – erst nach Entscheidung.

## Ablauf Option A (Cloudflare Pages / Netlify)
1. Benutzer pusht das Repository auf GitHub (GitHub Desktop).
2. Benutzer erstellt Konto beim Anbieter und verbindet das GitHub-Repository (Build-Befehl: leer, Ausgabe-Ordner: `/`).
3. Eigene Domain im Anbieter eintragen; der Anbieter nennt die DNS-Einträge.
4. Benutzer setzt die DNS-Einträge im Hostpoint Control Panel (meist `CNAME` für `www`, für die Hauptdomain je nach Anbieter `A`/`ALIAS`).
5. HTTPS wird vom Anbieter automatisch eingerichtet.

## Ablauf Option B (Hostpoint + GitHub Actions)
1. Klären: Hat der Benutzer ein Hostpoint-**Webhosting** (nicht nur Domain)? SSH im Control Panel aktivieren.
2. Eigenes SSH-Schlüsselpaar nur für das Deployment erzeugen; öffentlichen Schlüssel bei Hostpoint hinterlegen, privaten als GitHub-Secret (macht der Benutzer, Claude gibt Anleitung). Schlüssel nie committen.
3. Workflow `.github/workflows/deploy.yml`: bei Push auf `main` Dateien per `rsync` über SSH ins Web-Verzeichnis kopieren, `.claude/`, `.github/`, `*.md` ausschliessen.
4. Domain im Hostpoint Control Panel auf das Web-Verzeichnis zeigen lassen, SSL (Let's Encrypt) aktivieren.

## Vorher / Danach
- Vorher: Skill `website-check`; `sitemap.xml` und `robots.txt` mit `https://pfuenderli-graechen.ch`.
- Danach: Live-Seite im Browser öffnen und durchklicken; optional Google Search Console.
- Nicht veröffentlichen: `.claude/`, `CLAUDE.md`, `PLAN.md`, `SPEC.md`, Entwurfsdateien.
