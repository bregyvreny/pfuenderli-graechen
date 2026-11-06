# Spezifikation: apartments bregy – Website

Status: Freigegeben (A-01 bis A-08)   ·   Version: 0.2   ·   Stand: 6.11.2026

## 1. Ziel und Zielgruppe
Website für die drei Ferienwohnungen von Vreny & Michel Bregy-Brigger in Grächen (Wallis). Gäste sollen sich über die Wohnungen informieren und buchen bzw. anfragen können. Sprachen: Deutsch und Englisch.

## 2. Seiten (Sitemap)
| Seite | Datei | Zweck |
|---|---|---|
| Startseite DE | `docs/index.html` | Übersicht, Wohnungen, Lage, Preise, Kontakt |
| Chalet EFEU | `docs/efeu.html` | Detailseite |
| Apartment EGGERI | `docs/eggeri.html` | Detailseite |
| Kornstadel ARIDA PRATA | `docs/arida.html` | Detailseite |
| z'Pfünderli | `docs/pfuenderli.html` | Bistro, Brotladen, Swiss-Knife-Shop (A-08) |
| Englisch | `docs/en/…` | gleiche Seiten auf Englisch |

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
  - [x] `docs/sitemap.xml` listet alle 8 Seiten mit voller Adresse.
  - [x] `docs/robots.txt` erlaubt alles und verweist auf die Sitemap.

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

### A-08 Seite z'Pfünderli – Bistro & Brotladen, Swiss-Knife-Shop
- Priorität: Muss · Status: umgesetzt (6.11.2026), von Vreny laufend durchgesehen
- Eigene Seite `docs/pfuenderli.html` mit Stylesheet `docs/css/pfuenderli.css`, Fotos in `docs/assets/img/pfuenderli/` und `docs/assets/img/shop/`. Verlinkt aus dem z'Pfünderli-Abschnitt der Startseite (DE und EN), in `sitemap.xml`. Englische Fassung `docs/en/pfuenderli.html`, mit hreflang verknüpft.
- Quellen: `Geschäft\Bä\Preisliste-2026.xls` (Brotladen & Take-away), `Geschäft\Bä\Menukarte-Winter-2026-druck.docx` und `Menukarte-Nachdruck-Sommer-2026.docx` (Bistro).
- Entscheide von Vreny (6.11.2026):
  - Schreibweise überall «z'Pfünderli» (grosses P).
  - Adresse: z'Pfünderli, Brotladen & Bistro, Dorfstrasse 152, 3925 Grächen. Telefon +41 79 695 54 32, pfuenderli@bluewin.ch. Öffnungszeiten täglich 06.59–19.01 Uhr; Hinweis «Bis 12. Dezember 2026 geschlossen» (danach entfernen).
  - Mit Preisen; ohne Preis («Preis im Laden»): Eier, Käse, Fondue, Wein im Direktverkauf. Vermerk «Preise in CHF, Stand Sommer 2026, Änderungen vorbehalten».
  - Preisdetails: Konfitüre 200 g 5.00 / 300 g 7.00; Sirup 0,5 l 8.00; Tartelettes klein 3.50 / gross 8.50; Sandwiches 5.00–6.50; Roggenbrot natur 250 g 3.00 / 500 g 5.00 / 1000 g 8.50; Roggenbrot Früchte/Nüsse 500 g 6.00 / 1000 g 9.50.
  - Entfernt: Greecherli warm mit Rahm, Ciabatta-Sandwichbrötli, Schoko-Donut, Schoko-Muffin (Chocofan).
  - Pizza, Sandwiches und Hot-Dogs auch Take-away.
  - Swiss-Knife-Shop: nur Victorinox – Taschenmesser, Taschenwerkzeuge, Küchenmesser (Profi und privat), Küchenhilfen (Schäler, Schneidebretter, Rüstmesser, Scheren usw.). Keine Taschen/Rucksäcke, keine Parfüms (nicht mehr im Sortiment) – entsprechende Fotos nicht verwenden.
  - Nicht verwenden: Stockfoto `Weissbrot__174214.jpg` (Wasserzeichen).
- Abnahmekriterien:
  - [x] Seite lädt ohne fehlende Bilder, kein seitliches Scrollen auf 375 px
  - [x] Link von der Startseite DE/EN, Eintrag in `sitemap.xml`
  - [x] Englische Fassung `docs/en/pfuenderli.html` (6.11.2026; Schweizer Produktnamen wie Gipfeli, Zopf, Greecherli bleiben, mit englischer Erklärung)

### A-09 Impressum und Datenschutzerklärung
- Priorität: Muss · Status: freigegeben (Vreny, 6.11.2026)
- Seiten `docs/impressum.html` und `docs/datenschutz.html`, englisch `docs/en/impressum.html` und `docs/en/datenschutz.html` (Übersetzung, im Zweifel gilt die deutsche Fassung; mit hreflang verknüpft), verlinkt in der Fusszeile der Startseiten DE/EN und der z'Pfünderli-Seite. Grundlage: Schweizer Datenschutzgesetz (DSG). Kein Rechtsrat – im Zweifel Fachperson beiziehen.
- Angaben von Vreny (6.11.2026): Im Handelsregister eingetragen, Firmenname «Verena Bregy», 3925 Grächen, Swiss-Knife-Shop; MWST-Nr. CHE-105.731.005. Die ESTV-ID wird nicht veröffentlicht (interne Nummer der Steuerverwaltung).
- Bestätigt (6.11.2026): Adresse Swiss-Knife-Shop, Verena Bregy, Dorfstrasse 152, 3925 Grächen; MWST-Nr. von Vreny geprüft.
- Datenschutz nennt den Ist-Zustand: Hosting GitHub Pages (USA, Server-Logs), Schriften selbst gehostet (F-07), Kontakt per E-Mail/Telefon/WhatsApp, keine Cookies, keine Analyse-Werkzeuge. Kein Kontaktformular, nur E-Mail-Knopf (F-06).
- Abnahmekriterien:
  - [x] Beide Seiten existieren, sind in der Fusszeile verlinkt und in `sitemap.xml`
  - [x] Keine erfundenen Angaben; alle Firmenangaben stammen von Vreny
  - [x] Von Vreny gelesen und freigegeben (6.11.2026)

### A-10 Startseite: Ferienwohnungen und z'Pfünderli gleich gewichtet
- Priorität: Muss · Status: umgesetzt (6.11.2026), in der Vorschau geprüft; Freigabe durch Vreny ausstehend
- Ziel: Wer nur den Brotladen sucht, stösst sofort auf das z'Pfünderli.
- Entscheide Vreny (6.11.2026): geteiltes Titelbild; Name oben links und Google-Titel nennen beide.
- Abnahmekriterien:
  - [x] Titelbild oben zweigeteilt (Desktop nebeneinander, Handy untereinander): links Ferienwohnungen mit Knopf «Wohnungen ansehen», rechts z'Pfünderli (Bistro & Brotladen, Swiss-Knife-Shop, Öffnungszeiten) mit Knopf zu `pfuenderli.html` – DE und EN
  - [x] Name oben links «apartments bregy · z'Pfünderli» auf allen Seiten mit dieser Kopfzeile
  - [x] Seitentitel und Beschreibung der Startseiten DE/EN nennen beide (Titel ≤ 70 Zeichen)
  - [x] Navigation «z'Pfünderli» führt direkt auf `pfuenderli.html`
  - Hinweis: Der Schliessungshinweis «bis 12. Dezember 2026» steht auch im Titelbild – nach dem 12.12. an beiden Stellen entfernen.

### A-11 Online-Buchung mit easybooking
- Priorität: Muss · Status: online geprüft (6.11.2026); Testbuchung durch Vreny erfolgreich
- Einbaucode von Vreny (easybooking, Kunden-ID 7233, Seriennummer 7639-1754-6482) im Abschnitt «Online buchen» der Startseite DE (`localeId 2`) und EN (`localeId 1`, noch nicht bestätigt). Farben an die Website angepasst: Hintergrund `#2E5A44`, Schrift `#FFFFFF` (geliefert: `#fe9200` / `#000000`).
- Entscheide Vreny (6.11.2026): Studio ROSELINE darf in der Buchungsmaske erscheinen (der Einbaucode hat keinen Filter); grüne Farben; DE und EN.
- Lokal nicht testbar: easybooking lässt nur freigegebene Webadressen zu (CORS-Fehler auf localhost).
- Datenschutzerklärung DE/EN um Abschnitt «Online-Buchung über easybooking» ergänzt.
- Abnahmekriterien:
  - [x] Auf https://pfuenderli-graechen.ch lädt die Buchungsmaske (DE) ohne Fehlermeldung (als iframe von gsrv001.easy-booking.at); Suche liefert Verfügbarkeit bzw. Ausweichdaten
  - [x] Englische Startseite zeigt die Buchungsmaske auf Englisch (localeId 1 bestätigt)
  - [x] Farben gut lesbar (grüner Knopf, weisse Schrift)
  - [ ] Datenschutzerklärung stimmt mit dem tatsächlichen Verhalten überein (Cookies, Dienste) – nach dem Online-Test prüfen. Stand 6.11.2026: Auf pfuenderli-graechen.ch selbst keine Cookies; Dienste: www.easy-booking.at, gsrv001.easy-booking.at. Cookies innerhalb des easybooking-iframes nicht prüfbar.
- Suchleiste oben (Wohnung, Anreise, Abreise, Gäste) gab ihre Auswahl nicht an easybooking weiter – auf Wunsch von Vreny entfernt (DE/EN, 6.11.2026). Gebucht wird nur noch in der easybooking-Maske.

## 4. Nicht-funktionale Anforderungen
- Darstellung auf Handy (ab 375 px), Tablet, Desktop
- Sprache: Deutsch (Schweiz, «ss») und Englisch
- Reines HTML/CSS, keine Build-Tools

## 5. Abgrenzung (nicht Teil dieser Version)
- Google Search Console, Google-Unternehmensprofil, Weiterleitung alte Domain → erledigt Vreny (siehe `vreny-todos.txt`)

## 6. Offene Fragen
- [x] F-01 Hosting: Entscheid 5.11.2026 GitHub Actions mit `public/`; **geändert 6.11.2026: GitHub Pages «Deploy from a branch», `main` / `docs/`** (so in GitHub eingestellt). Workflow `.github/workflows/pages.yml` entfernt. Hinweis auf die GitHub-Bedingungen (keine vorwiegend geschäftlichen Seiten) wurde gegeben.
- [x] F-02 easybooking – Einbaucode von Vreny erhalten (6.11.2026), eingebaut als A-11.
- [x] F-03 Studio ROSELINE (easybooking-Kategorie 24) auf die Website? – **Nein** (Entscheid Vreny 6.11.2026): kein Text, kein Bild, kein Link. Ausnahme: In der easybooking-Buchungsmaske darf Roseline erscheinen (Entscheid 6.11.2026).
- [x] F-04 Impressum und Datenschutz – umgesetzt als Entwurf (A-09).
- [x] F-06 Kontaktformular verschickte nichts – **durch Knopf «E-Mail schreiben» ersetzt** (mailto an brv@bluewin.ch, DE/EN; Entscheid Vreny 6.11.2026).
- [x] F-07 Google Fonts – **selbst gehostet** (Entscheid Vreny 6.11.2026): `docs/assets/fonts/` + `docs/css/fonts.css`, nur Zeichensätze latin und latin-ext. Datenschutzerklärung angepasst.
- [x] F-05 (erledigt 5.11.2026: drei Südzimmer-Fotos von Vreny eingesetzt – `efeu-suedzimmer.jpg` als Hauptfoto, `-balkon`, `-lavabo`; vertauschte Fotos getauscht) Fotos Chalet EFEU passten nicht zur Beschreibung: Das Hauptfoto «Südzimmer» (`6cc9b0e4…`) und «Südzimmer mit Lavabo» (`2885bc79…`) zeigen das Chalet von aussen; «Wohnraum mit Sofas» (`ec4f2f5a…`) und «Einzelzimmer mit Natursteinwand» (`66cc5485…`) sind vertauscht. Vermutlich schon so im Entwurf (nicht im Canvas geprüft). Richtiges Südzimmer-Foto auswählen (Ordner OneDrive\Bilder\Bilder\apartments\Efeu).

## 7. Änderungsprotokoll
| Version | Datum | Änderung |
|---|---|---|
| 0.1 | 5.11.2026 | Erste Fassung: SEO (A-01 bis A-06), Adresse (A-07) |
| 0.2 | 6.11.2026 | Hosting auf `docs/` umgestellt (F-01); A-08 z'Pfünderli-Seite; F-03 Roseline: nein. Übernommen aus dem versehentlich benutzten Ordner `OneDrive\Documents\Claude\website\pfuenderli-graechen` |
| 0.3 | 6.11.2026 | A-09 Impressum und Datenschutz (Entwurf); neue Fragen F-06 Kontaktformular, F-07 Google Fonts |
| 0.4 | 6.11.2026 | F-07: Schriften selbst gehostet, keine Verbindung zu Google mehr |
| 0.5 | 6.11.2026 | A-10 Startseite: Ferienwohnungen und z'Pfünderli gleich gewichtet |
| 0.6 | 6.11.2026 | A-09: Impressum und Datenschutz auch auf Englisch |
| 0.7 | 6.11.2026 | A-08: z'Pfünderli-Seite auf Englisch |
| 0.8 | 6.11.2026 | A-11 easybooking-Buchungsmaske eingebaut (Test online ausstehend), F-02 erledigt |
