# Spezifikation: apartments bregy – Website

Status: Freigegeben (A-01 bis A-07)   ·   Version: 0.1   ·   Stand: 5.11.2026

## 1. Ziel und Zielgruppe
Website für die drei Ferienwohnungen von Vreny & Michel Bregy-Brigger in Grächen (Wallis). Gäste sollen sich über die Wohnungen informieren und buchen bzw. anfragen können. Sprachen: Deutsch und Englisch.

## 2. Seiten (Sitemap)
| Seite | Datei | Zweck |
|---|---|---|
| Startseite DE | `public/index.html` | Übersicht, Wohnungen, Lage, Preise, Kontakt |
| Chalet EFEU | `public/efeu.html` | Detailseite |
| Apartment EGGERI | `public/eggeri.html` | Detailseite |
| Kornstadel ARIDA PRATA | `public/arida.html` | Detailseite |
| Englisch | `public/en/…` | gleiche Seiten auf Englisch |

Domain: `https://pfuenderli-graechen.ch`

## 3. Anforderungen

### A-01 Seitentitel und Kurzbeschreibung
- Priorität: Muss · Status: geprüft
- Jede Seite hat einen aussagekräftigen `<title>` und eine `meta description`. Die Texte stützen sich nur auf Inhalte, die schon auf der Seite stehen.
- Abnahmekriterien:
  - [x] Alle 8 Seiten haben einen eigenen Titel (≤ 70 Zeichen) mit Wohnungsname bzw. «Ferienwohnungen in Grächen».
  - [x] Alle 8 Seiten haben eine eigene Beschreibung (≤ 170 Zeichen) in der Seitensprache.

### A-02 Sprachversionen verknüpfen
- Priorität: Muss · Status: geprüft
- Abnahmekriterien:
  - [x] Jede Seite hat `<link rel="canonical">` auf ihre eigene Adresse.
  - [x] Jede Seite hat `hreflang`-Links auf die DE- und EN-Version sowie `x-default` (= DE).

### A-03 sitemap.xml und robots.txt
- Priorität: Muss · Status: geprüft
- Abnahmekriterien:
  - [x] `public/sitemap.xml` listet alle 8 Seiten mit voller Adresse.
  - [x] `public/robots.txt` erlaubt alles und verweist auf die Sitemap.

### A-04 Unterkunftsdaten für Google (strukturierte Daten)
- Priorität: Soll · Status: geprüft
- Auf beiden Startseiten JSON-LD vom Typ `LodgingBusiness` mit Name, Adresse, Telefon, E-Mail, Preisspanne, Bild.
- Adresse: **Dorfstrasse 152, 3925 Grächen** (von der Gemeinde neu vergeben, bestätigt am 5.11.2026).
- Abnahmekriterien:
  - [x] JSON-LD ist gültiges JSON und enthält die Adresse Dorfstrasse 152.
  - [x] Keine erfundenen Angaben (z. B. keine Koordinaten, keine Bewertungen).

### A-05 Vorschau beim Teilen (Open Graph)
- Priorität: Soll · Status: geprüft
- Abnahmekriterien:
  - [x] Jede Seite hat `og:title`, `og:description`, `og:url`, `og:image` (absolute Adresse), `og:type`, `og:locale` und `twitter:card`.
  - [x] Als Bild dient das Hauptfoto der jeweiligen Seite.

### A-06 Fotos verkleinern
- Priorität: Soll · Status: geprüft
- Abnahmekriterien:
  - [x] Kein Foto ist breiter/höher als 1600 px.
  - [x] Gesamtgrösse der Fotos mindestens 40 % kleiner als vorher (vorher ca. 16.2 MB). Ergebnis: 8.4 MB, 48 % kleiner; Titelbild max. 1600 px, übrige Fotos max. 1400 px.
  - [x] Fotos unterhalb des sichtbaren Bereichs haben `loading="lazy"`.

### A-07 Adresse aktualisieren
- Priorität: Muss · Status: geprüft
- Abnahmekriterien:
  - [x] Auf keiner Seite steht mehr «Halbsucht 273»; überall «Dorfstrasse 152, 3925 Grächen».

## 4. Nicht-funktionale Anforderungen
- Darstellung auf Handy (ab 375 px), Tablet, Desktop
- Sprache: Deutsch (Schweiz, «ss») und Englisch
- Reines HTML/CSS, keine Build-Tools

## 5. Abgrenzung (nicht Teil dieser Version)
- Google Search Console, Google-Unternehmensprofil, Weiterleitung alte Domain → erledigt Vreny (siehe `vreny-todos.txt`)

## 6. Offene Fragen
- [x] F-01 Hosting: Entscheid 5.11.2026 – GitHub Pages mit Workflow `.github/workflows/pages.yml`, veröffentlicht nur `public/`. Hinweis auf die GitHub-Bedingungen (keine vorwiegend geschäftlichen Seiten) wurde gegeben.
- [ ] F-02 easybooking: Welcher Link kommt auf die Seite? Der Vorschau-Link ist intern und nicht für Gäste geeignet.
- [ ] F-03 Studio ROSELINE (easybooking-Kategorie 24) auf die Website?
- [ ] F-04 Impressum und Datenschutz fehlen noch.
- [x] F-05 (erledigt 5.11.2026: drei Südzimmer-Fotos von Vreny eingesetzt – `efeu-suedzimmer.jpg` als Hauptfoto, `-balkon`, `-lavabo`; vertauschte Fotos getauscht) Fotos Chalet EFEU passten nicht zur Beschreibung: Das Hauptfoto «Südzimmer» (`6cc9b0e4…`) und «Südzimmer mit Lavabo» (`2885bc79…`) zeigen das Chalet von aussen; «Wohnraum mit Sofas» (`ec4f2f5a…`) und «Einzelzimmer mit Natursteinwand» (`66cc5485…`) sind vertauscht. Vermutlich schon so im Entwurf (nicht im Canvas geprüft). Richtiges Südzimmer-Foto auswählen (Ordner OneDrive\Bilder\Bilder\apartments\Efeu).

## 7. Änderungsprotokoll
| Version | Datum | Änderung |
|---|---|---|
| 0.1 | 5.11.2026 | Erste Fassung: SEO (A-01 bis A-06), Adresse (A-07) |
