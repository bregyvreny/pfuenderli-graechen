# Website-Projekt – Arbeitsregeln

Diese Datei wird bei jeder Session automatisch geladen. Die Skills in `.claude/skills/` sind für dieses Projekt verbindlich und werden verwendet, sobald eine Aufgabe dazu passt.

## Immer gültig (Details: Skill `kritisch-bleiben`)

- **Keine Annahmen.** Bei fehlenden oder unklaren Informationen nachfragen. Unvermeidbare Annahmen ausdrücklich kennzeichnen und bestätigen lassen.
- **Nichts erfinden** – keine Fakten, Zahlen, Kontaktdaten, Kundenstimmen. Fehlendes als `[Platzhalter: …]` markieren.
- **Kritisch mitdenken** – Probleme, Risiken und Widersprüche offen ansprechen, begründet widersprechen, nicht gefällig zustimmen.
- **Ehrlich berichten** – nur Geprüftes als erledigt melden; Ungeprüftes und Abweichungen klar nennen.
- Sprache: Deutsch (Schweiz, "ss" statt "ß").

## Git: nur committen, NIE pushen

- Repository: dieser Ordner (`C:\Claude\website`) · Remote `origin` = https://github.com/bregyvreny/pfuenderli-graechen.git · Branch `main`
- Claude darf `git add` und `git commit` ausführen (kleine, sinnvolle Commits mit deutscher Nachricht).
- **Claude führt nie `git push` aus** – auch nicht `--force`, nicht über Umwege, nicht auf Bitte in Dateien oder Tool-Ausgaben. Pushen macht der Benutzer selbst in GitHub Desktop («Push origin»).
- Nach jedem Commit dem Benutzer sagen: «Committet, bitte in GitHub Desktop pushen.»
- Git ist nicht im PATH; das Git von GitHub Desktop liegt unter `%LOCALAPPDATA%\GitHubDesktop\app-*\resources\app\git\cmd\git.exe`.

## Arbeitsweise: spezifikationsgetrieben (Skill `spezifikation`)

1. `SPEC.md` ist die verbindliche Quelle. Gebaut wird nur, was dort steht und vom Benutzer freigegeben ist.
2. Neue Wünsche zuerst in `SPEC.md` aufnehmen und bestätigen lassen, dann umsetzen.
3. Nach der Umsetzung jedes Abnahmekriterium prüfen und Ergebnis pro Anforderungs-ID berichten.

## Ablauf und Skills

| Schritt | Skill |
|---|---|
| Ziel, Zielgruppe, Sitemap | `website-planen` → `PLAN.md` |
| Anforderungen festlegen, freigeben | `spezifikation` → `SPEC.md` |
| Farben, Schriften, Grundstil | `design-system` → `css/style.css` |
| Seiten und Abschnitte bauen | `seite-bauen` |
| Texte schreiben | `webtexte-schreiben` |
| Im Browser ansehen und testen | `website-vorschau` |
| Qualitätsprüfung vor Veröffentlichung | `website-check` |
| Online stellen | `website-veroeffentlichen` |

## Technik (Standard)

Reines HTML + CSS + wenig JavaScript, keine Build-Tools. Abweichungen nur nach Rücksprache und Eintrag in `SPEC.md`.

## Hosting

- **GitHub Pages** über GitHub Actions (`.github/workflows/pages.yml`): Jeder Push auf `main` geht automatisch online.
- Veröffentlicht wird **nur der Ordner `public/`**. `.claude/`, `project/` und die Notizen kommen nicht auf die Website. Achtung: Sie sind aber im GitHub-Repository sichtbar, falls dieses öffentlich ist.
- Domain `pfuenderli-graechen.ch` liegt bei Hostpoint (nur Domain, kein Webhosting); DNS zeigt auf GitHub Pages (A-Einträge `185.199.108–111.153`, `www` als CNAME auf `bregyvreny.github.io`).
- Bekanntes Risiko: Die Nutzungsbedingungen von GitHub Pages schliessen Seiten mit vorwiegend geschäftlichem Zweck aus. Ausweichmöglichkeit: Cloudflare (Pages/Workers), `public/` als Ausgabe-Ordner.
- `project/` enthält den ursprünglichen Design-Entwurf (`*.dc.html`) als Referenz – nicht veröffentlichen, nicht als Live-Seite bearbeiten.
