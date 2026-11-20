# Spezifikation: apartments bregy – Website

Status: Freigegeben (A-01 bis A-08)   ·   Version: 0.2   ·   Stand: 6.11.2026

## 1. Ziel und Zielgruppe
Website für die drei Ferienwohnungen von Vreny & Michel Bregy-Brigger in Grächen (Wallis). Gäste sollen sich über die Wohnungen informieren und buchen bzw. anfragen können. Sprachen: Deutsch und Englisch.

## 2. Seiten (Sitemap)
| Seite | Datei | Zweck |
|---|---|---|
| Startseite DE | `docs/index.html` | Übersicht, Wohnungen, Lage, Preise, Kontakt |
| Apartment EFEU | `docs/efeu.html` | Detailseite |
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
  - Mit Preisen; ohne Preis («Preis im Laden»): Eier, Käse, Fondue, Wein im Direktverkauf. Vermerk «Preise in CHF, Stand Sommer 2026, Änderungen vorbehalten» (seit A-26: «Stand Winter 2027»).
  - Preisdetails: Konfitüre 200 g 5.00 / 300 g 7.00; Sirup 0,5 l 8.00; Tartelettes klein 3.50 / gross 8.50; Sandwiches 5.00–6.50; Roggenbrot natur 250 g 3.00 / 500 g 5.00 / 1000 g 8.50; Roggenbrot Früchte/Nüsse 500 g 6.00 / 1000 g 9.50.
  - Entfernt: Greecherli warm mit Rahm, Ciabatta-Sandwichbrötli, Schoko-Donut, Schoko-Muffin (Chocofan).
  - Pizza, Sandwiches und Hot-Dogs auch Take-away.
  - Holzofenbrote gemäss Fredy's Gesamtkatalog 2027 (7.11.2026): «Holzofen Wild & Ruch», «Holzofen Pane alle olive oder Pane al pomodoro»; Nuss-Kartoffelbrot ist kein Holzofenbrot und steht bei «Brote»; «Holzofen Burebrot hell» und «Holzofen UrDinkel-Chnorz» ebenfalls von Fredy's (bestätigt).
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
- Einbaucode von Vreny (easybooking, Kunden-ID 7233, Seriennummer 7639-1754-6482) im Abschnitt «Online buchen» der Startseite DE (`localeId 2`) und EN (`localeId 1`, noch nicht bestätigt). Farben wie geliefert: Hintergrund `#fe9200`, Schrift `#000000` (vom 6.11. bis 8.11.2026 grün `#2E5A44` / `#FFFFFF`; Entscheid Vreny 8.11.2026: Originalfarben, damit man merkt, dass man ins Buchungssystem wechselt).
- Nach jedem Schrittwechsel in der Maske scrollt die Seite an den Anfang der Buchungsmaske (eigenes Skript, wertet die Meldungen `type: "update"`/`step` des easybooking-iframes aus; beim Laden der Seite kein Scrollen). Grund: Nach «Weiter» im ersten Schritt landete man sonst unterhalb der Maske (Meldung Vreny 8.11.2026). Die eingebaute Scroll-Funktion von easybooking ist im Einbaucode inaktiv.
- Entscheide Vreny (6.11.2026): Studio ROSELINE darf in der Buchungsmaske erscheinen (der Einbaucode hat keinen Filter); grüne Farben; DE und EN.
- Lokal nicht testbar: easybooking lässt nur freigegebene Webadressen zu (CORS-Fehler auf localhost).
- Datenschutzerklärung DE/EN um Abschnitt «Online-Buchung über easybooking» ergänzt.
- Abnahmekriterien:
  - [x] Auf https://pfuenderli-graechen.ch lädt die Buchungsmaske (DE) ohne Fehlermeldung (als iframe von gsrv001.easy-booking.at); Suche liefert Verfügbarkeit bzw. Ausweichdaten
  - [x] Englische Startseite zeigt die Buchungsmaske auf Englisch (localeId 1 bestätigt)
  - [x] Farben wie geliefert (oranger Knopf, schwarze Schrift) und gut lesbar (online geprüft 8.11.2026, DE/EN)
  - [x] Nach «Weiter» im ersten Schritt ist der Anfang der Buchungsmaske sichtbar (Desktop und Handy), DE und EN – online geprüft 8.11.2026 im schmalen Browserfenster (DE/EN), von Vreny auf dem Handy bestätigt (8.11.2026)
  - [x] Beim Öffnen der Startseite springt die Seite nicht von selbst zur Buchungsmaske (online geprüft 8.11.2026, DE/EN)
  - [ ] Datenschutzerklärung stimmt mit dem tatsächlichen Verhalten überein (Cookies, Dienste) – nach dem Online-Test prüfen. Stand 6.11.2026: Auf pfuenderli-graechen.ch selbst keine Cookies; Dienste: www.easy-booking.at, gsrv001.easy-booking.at. Cookies innerhalb des easybooking-iframes nicht prüfbar.
- Suchleiste oben (Wohnung, Anreise, Abreise, Gäste) gab ihre Auswahl nicht an easybooking weiter – auf Wunsch von Vreny entfernt (DE/EN, 6.11.2026). Gebucht wird nur noch in der easybooking-Maske.

### A-12 Startseite: drei Schwerpunkte gleich gewichtet
- Priorität: Muss · Status: umgesetzt (7.11.2026), Freigabe durch Vreny ausstehend
- Entscheide Vreny (7.11.2026): Die drei Schwerpunkte sind z'Pfünderli, Swiss-Knife-Shop und Apartments, in dieser Reihenfolge. Ersetzt das zweigeteilte Titelbild aus A-10.
- Abnahmekriterien:
  - [x] Titelbild mit drei gleich grossen Feldern (Desktop nebeneinander, Handy untereinander), je mit Foto, Kurztext und Knopf – DE und EN
  - [x] Hauptmenü beginnt mit z'Pfünderli · Swiss-Knife-Shop · Wohnungen
  - [x] Name oben links und Google-Titel nennen alle drei
  - Hinweis: Schliessungshinweis «bis 12. Dezember 2026» steht im z'Pfünderli- und im Shop-Feld – nach dem 12.12. entfernen.

### A-13 Startseite: Titel der drei Schwerpunkte anklickbar
- Priorität: Soll · Status: freigegeben durch Vreny (9.11.2026, Auswahl im Chat)
- Die drei grossen Titel im Titelbild führen zum gleichen Ziel wie der Knopf darunter:
  - z'Pfünderli → `/pfuenderli.html` (EN `/en/pfuenderli.html`)
  - Swiss-Knife-Shop → `/pfuenderli.html#shop` (EN `/en/pfuenderli.html#shop`)
  - Apartments → Abschnitt `#wohnungen` auf der Startseite (es gibt keine eigene Unterseite)
- Aussehen: Titel unverändert; beim Darüberfahren mit der Maus bzw. bei Tastaturfokus unterstrichen.
- Andere Titel der Startseite bleiben ohne Link.
- Abnahmekriterien:
  - [x] Klick auf jeden der drei Titel führt zum genannten Ziel – DE und EN (lokal geprüft 9.11.2026; Ziele `#shop` und `#wohnungen` vorhanden)
  - [x] Titel sehen ohne Maus gleich aus wie vorher (Farbe, Grösse, nicht unterstrichen)
  - [x] Beim Darüberfahren sind die Titel unterstrichen (Tastaturfokus per CSS `:focus-visible`, nicht separat getestet)
  - [x] Keine neuen Fehler in der Browser-Konsole (lokal nur die bekannten easybooking-CORS-Meldungen, die nur auf localhost auftreten)

### A-14 z'Pfünderli-Seite: vegane Produkte mit «V» kennzeichnen
- Priorität: Soll · Status: freigegeben durch Vreny (10.11.2026, «mit V kennzeichnen»)
- Quelle: «Fredy's vegane Produkteliste» (PDF im Ordner Bä, 10.11.2026), abgeglichen über die Artikelnummern der Bestellliste AA-19-10-2026; eigene Produkte wie auf der Preisliste (Hüsbrot, Roggenbrote, Konfitüre, Sirup).
- Gilt nur für den Abschnitt «Brotladen & Take-away» (DE und EN), nicht für die Bistro-Karte.
- Mit V: Veganer Gipfel, Kaisersemmel, Mütschli ruch (= Fredy's Holzofenperle 4013, Angabe Vreny 10.11.2026), Chnörzli hell, Fonduebrot, Mehrkornbrot, Toscanerbrot, Nuss-Kartoffelbrot, Ur-Dinkel-Kernenbrot, Gastrobrot ruch, Holzofen Pain traditionnel hell und dunkel, Holzofen Wild & Ruch, Holzofen UrDinkel-Chnorz, Holzofen Pane alle olive / al pomodoro, Hüsbrot zweifarbig, Roggenbrot natur, Roggenbrot Früchte/Nüsse, Konfitüre, Sirup 0,5 l.
- Ebenfalls mit V (Prodega, Hersteller Römer's Hausbäckerei; Zutaten ohne tierische Bestandteile laut shop.romers.ch, Allergenhinweis «Spuren von Milch», kein Vegan-Label; freigegeben durch Vreny 10.11.2026): Maggiabrötli (Römer's 10482), Ur-Dinkelbrötli (= Römer's Dinkelbrötli 10415).
- Ohne V: Laugensemmel (laut Vreny nicht vegan).
- Aussehen: kleines grünes «V» hinter dem Produktnamen (wie auf der Preisliste), Erklärung «V = vegan» unter dem Brotladen.
- Abnahmekriterien:
  - [x] Alle oben genannten Produkte tragen ein V – DE und EN (lokal geprüft 10.11.2026: je 22 V inkl. Mütschli ruch, Maggiabrötli, Ur-Dinkelbrötli)
  - [x] Kein anderes Produkt trägt ein V (kein V ausserhalb des Brotladens)
  - [x] Erklärung «V = vegan» sichtbar unter dem Brotladen – DE und EN
  - [x] Darstellung auf Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler

### A-15 Vorschaubild und Name für Google
- Priorität: Soll · Status: freigegeben durch Vreny (17.11.2026, «Spec aufnehmen und umsetzen»)
- Hintergrund: Die Website erscheint bei Google, aber ohne Vorschaubild. Google wählt das Bild selbst; die Website kann es nur vorschlagen.
- Vorschaubild der Startseite (DE und EN) neu: Brotkorb aus dem Brotladen (`/assets/img/pfuenderli/brotkorb.jpg`) statt Hausfoto (Wunsch Vreny: «ein Bild von der Bäckerei»; Auswahl des Fotos durch Claude).
- Auf allen Seiten (DE und EN) die Erlaubnis für grosse Vorschaubilder: `<meta name="robots" content="max-image-preview:large">`.
- Name der Website (`og:site_name`) auf allen Seiten «z'Pfünderli Grächen» statt «apartments bregy».
- Nicht geändert: Unterkunftsdaten für Google (A-04, Name «apartments bregy», Hausfoto) – sie beschreiben die Wohnungen.
- Fotos im Google-Unternehmensprofil lädt Vreny selbst hoch (nicht Teil der Website).
- Abnahmekriterien:
  - [x] Startseite DE und EN: `og:image` zeigt auf `brotkorb.jpg`, die Datei ist vorhanden (lokal geprüft 17.11.2026, Bild lädt)
  - [x] Alle Seiten: genau eine robots-Zeile mit `max-image-preview:large`, kein `noindex` (alle 14 Seiten geprüft)
  - [x] Keine Seite enthält mehr `og:site_name` «apartments bregy»
  - [x] Seiten laden ohne neue Konsolenfehler (Startseite lokal geprüft)
  - Hinweis: Ob und wann Google das Bild zeigt, entscheidet Google; wirksam erst nach dem nächsten Besuch des Google-Crawlers.

### A-16 z'Pfünderli-Seite: Sparten aufklappbar
- Priorität: Soll · Status: freigegeben durch Vreny (17.11.2026, Auswahl im Chat); Ergebnis online von Vreny bestätigt (17.11.2026, «übersichtlicher, passt so»)
- Wunsch Vreny: Die Darstellung der Produkte stört; die Sparten sollen einzeln aufklappen, wenn man sie anklickt.
- Gilt für die Bistro-Karte (7 Sparten) und den Brotladen (9 Sparten: «Gipfeli» und «Zopf» werden getrennt), DE und EN. Seit A-19 (18.11.2026) hat der Brotladen 10 Sparten. Swiss-Knife-Shop unverändert.
- Beim Laden der Seite sind alle Sparten zugeklappt; sichtbar ist nur der Titel mit einem Pfeil.
- Klick auf den Titel öffnet bzw. schliesst die Sparte; mehrere Sparten können gleichzeitig offen sein.
- Umsetzung ohne JavaScript (HTML-Element `<details>`/`<summary>`), bedienbar mit Tastatur.
- Anordnung: Sparten untereinander in einer Spalte (max. ca. 46rem breit) statt im Raster – im Raster entstanden beim Aufklappen grosse Lücken (Entscheid Claude beim Umsetzen, 17.11.2026).
- Inhalte (Produkte, Preise, V-Kennzeichnung) bleiben unverändert; Legende «V = vegan» und Preisvermerk bleiben immer sichtbar.
- Abnahmekriterien:
  - [x] DE und EN: 7 Sparten in der Bistro-Karte und 9 im Brotladen, alle beim Laden zugeklappt (lokal geprüft 17.11.2026)
  - [x] Klick auf einen Titel öffnet die Sparte, erneuter Klick schliesst sie; zwei Sparten gleichzeitig offen möglich
  - [x] Anzahl Produkte und V-Kennzeichnungen gleich wie vorher (je 138 Listenzeilen, 23 V pro Sprache)
  - [x] Darstellung auf Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler

### A-17 z'Pfünderli-Seite: Sparten klappen auf wie ein Blatt
- Priorität: Kann · Status: freigegeben durch Vreny (17.11.2026, Variante «A»); Ergebnis online von Vreny bestätigt (17.11.2026)
- Ergänzt A-16: Beim Öffnen einer Sparte schwenkt der Inhalt von links nach rechts auf, wie eine Seite, die umgeblättert wird (Dauer ca. 0,5 Sekunden).
- Nur beim Öffnen; das Schliessen geschieht ohne Animation.
- Umsetzung nur mit CSS (ohne JavaScript). Wer im Gerät «Bewegung reduzieren» eingestellt hat, sieht keine Animation.
- Anordnung, Inhalte und Verhalten aus A-16 bleiben unverändert.
- Abnahmekriterien:
  - [x] Beim Öffnen einer Sparte läuft die Blatt-Animation von links nach rechts – DE und EN (lokal geprüft 17.11.2026)
  - [x] Nach der Animation sieht die Sparte genau gleich aus wie vorher
  - [x] Bei «Bewegung reduzieren» keine Animation (nur im CSS-Code geprüft: Animation steht in `@media (prefers-reduced-motion: no-preference)`, nicht im Browser getestet)
  - [x] Handy (375 px) ohne seitliches Scrollen, auch während der Animation; keine Konsolenfehler

### A-18 Neuheiten, saisonale Angebote und Aktionen
- Priorität: Soll · Status: freigegeben durch Vreny (17.11.2026, «Ja, umsetzen»); umgesetzt 17.11.2026, noch ohne echten Eintrag
- Wunsch Vreny (17.11.2026): Produkte wie die Pralinen als Neuheit zeigen, auch saisonale Angebote und Aktionen; auf der z'Pfünderli-Seite und auf der Startseite.
- **Feld «Neu & Aktuell»** (EN «New & seasonal») auf der z'Pfünderli-Seite, direkt unter Öffnungszeiten/Vorbestellen/Adresse und vor der Bistro-Karte, Sprungmarke `#aktuell`.
  - Ein oder mehrere Einträge, je mit: Titel, kurzer Text (1–3 Sätze), optional Foto, optional Preis, optional Hinweis «nur auf Vorbestellung» o. ä.
  - Jeder Eintrag kann ein Startdatum («ab») und ein Enddatum («bis») haben. Vor dem Start und nach dem Ende wird er automatisch ausgeblendet (wenig JavaScript, Datum des Geräts).
  - Ist kein Eintrag gültig, ist das ganze Feld unsichtbar.
- **Startseite** (DE/EN): Im z'Pfünderli-Feld des Titelbilds eine kurze Zeile «Neu: …» mit Link auf `/pfuenderli.html#aktuell`. Gleiche Datumsregeln; ohne gültigen Eintrag keine Zeile.
- **Zeichen «Neu»** in der Produktliste (Bistro-Karte/Brotladen): kleines Etikett hinter dem Produktnamen, ähnlich dem «V», ebenfalls mit Enddatum.
- Saisonale Produkte können bei Bedarf eine eigene Sparte erhalten (z. B. «Saison: Herbst»), aufklappbar wie A-16.
- Inhalte: Texte, Preise, Daten und Fotos liefert Vreny; nichts wird erfunden. Englische Übersetzung durch Claude.
- Ablauf für Änderungen: Vreny schickt Text/Foto im Chat → Claude baut ein und committet → Vreny pusht.
- Abgelaufene Einträge entfernt Claude bei der nächsten Änderung aus dem Code.
- Technik: `/js/aktuell.js`; Vorlagen für Eintrag, Startseiten-Zeile und Zeichen «Neu» stehen als Kommentar in `pfuenderli.html`, `index.html` und `css/pfuenderli.css`. Ohne JavaScript bleiben alle Einträge ausgeblendet (nie veraltete Anzeige).
- Nicht Teil davon: Bearbeitungsprogramm (CMS) für Vreny; Beiträge im Google-Unternehmensprofil (macht Vreny selbst, sobald das Profil eingerichtet ist).
- Vorbehalt Pralinen: Ankündigung erst, wenn Etikette (Gewicht, Haltbarkeit, Zutaten) und Probeguss erledigt sind.
- Abnahmekriterien (Prüfung mit einem Test-Eintrag, der danach wieder entfernt wird):
  - [x] Gültiger Eintrag erscheint auf der z'Pfünderli-Seite und als Zeile auf der Startseite – DE und EN (lokal 17.11.2026; Startseiten-Zeile nur DE mit Test-Eintrag geprüft, EN gleicher Aufbau; Link springt zum Feld, Titel nicht unter dem Menüband)
  - [x] Eintrag mit Startdatum in der Zukunft bzw. Enddatum in der Vergangenheit ist nicht sichtbar, auch nicht auf der Startseite
  - [x] Ohne gültigen Eintrag ist weder das Feld noch die Startseiten-Zeile sichtbar (kein leerer Rahmen)
  - [x] Zeichen «Neu» erscheint hinter einem Produkt und verschwindet nach dem Enddatum
  - [x] Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler
  - Test-Einträge nach der Prüfung wieder entfernt.

### A-19 Brotladen nach Preisliste: Zeichen H und B, Sortiment, Fondue-Preis
- Priorität: Soll · Status: freigegeben durch Vreny (18.11.2026: «alles andere übernehmen von der Preisliste», Fondue-Preis, «Sandwich 6.50»)
- Quelle: `Geschäft\Bä\Preisliste-neu-Entwurf.pdf` (Druckdatum 10.11.2026), Legende «H = hausgemacht · B = nur auf Bestellung · V = vegan · □ = Preis im Laden».
- Gilt für den Abschnitt «Brotladen & Take-away» (DE und EN), wie das V aus A-14. Bistro-Karte unverändert, ausser Pizza-Grösse «27 cm» (laut Preisliste).
- **Zeichen H** (braun, Stil wie das V) statt des Worts «hausgemacht»: Hüsbrot zweifarbig, Para-Pan / Eiweissbrot, Maisbrot mit Käse und Zwiebeln, Ur-Dinkel-Früchtebrot, Roggenbrot natur, Roggenbrot Früchte/Nüsse, Apfelstrudel, Torte (Stück), Tartelette, Tiramisu, Greecherli / Früchtekuchen, Konfitüre, Sirup (Konfitüre und Sirup neu, laut Preisliste).
- **Zeichen B** (umgekehrt: weiss mit braunem Rand und brauner Schrift, damit es sich auch ohne Farbsehen vom H unterscheidet; Ergänzung 18.11.2026, freigegeben durch Vreny «du kannst es umsetzen») statt «nur auf Bestellung»: Fonduebrot, Ur-Dinkel-Früchtebrot, Roggenbrot Früchte/Nüsse.
- Reihenfolge der Zeichen wie auf der Preisliste: H, B, V. Beim Darüberfahren bzw. für Vorleseprogramme das ausgeschriebene Wort.
- EN: gleiche Buchstaben H, B, V wie auf der gedruckten Preisliste; Legende auf Englisch («H = homemade · B = to order only · V = vegan»).
- Legende unter dem Brotladen: «H = hausgemacht · B = nur auf Bestellung · V = vegan» (ersetzt «V = vegan»).
- «Preis im Laden» bleibt als Text (kein Kästchen □).
- **Horu-Fonduemischung:** Preis 11.00 pro Person (200 g), statt «Preis im Laden» (Angabe Vreny 18.11.2026). Kein B – Vorbestellung nicht nötig, nur das Fonduebrot (Angabe Vreny 18.11.2026).
- **Sortiment und Reihenfolge wie Preisliste:** Sparten Gipfeli, Brötli, Zopf, Brote, Holzofenbrote, Hausgemachte Brote, Süsses, Für die Ferienwohnung, Käse & Fondue, Getränke zum Mitnehmen (10 Sparten statt 9; «Holzofen & hausgemacht» wird in «Holzofenbrote» und «Hausgemachte Brote» geteilt; «Für das Apartment» heisst «Für die Ferienwohnung»). Reihenfolge der Produkte innerhalb der Sparten wie Preisliste.
- Neu bzw. getrennt: Früchtejoghurt-Brötli und Cranberry-Brötli (je 2.00); Holzofen Pane alle olive (Olivenbrot) und Pane al pomodoro (Tomatenbrot) (je 7.50, V); Granini Orangensaft 1 l und Multivitaminsaft 1 l (je 5.00); Joghurt (1.20); Bier alkoholfrei (4.50).
- Bleibt wie bisher (bewusst nicht von der Preisliste übernommen): Fruchtsorten beim Greecherli (Preisliste: «versch. Früchte»); Getränke zum Mitnehmen gruppiert statt einzeln (gleiche Preise).
- Sandwich Trockenfleisch / Rohschinken: 6.50 (Angabe Vreny 18.11.2026) – Website stimmt bereits; im Preisliste-Entwurf von Vreny auf 6.50 korrigiert (Angabe Vreny 18.11.2026).
- Abnahmekriterien:
  - [x] Alle oben genannten Produkte tragen H bzw. B – DE und EN; kein «hausgemacht» bzw. «nur auf Bestellung» mehr als Wort in diesen Zeilen (lokal geprüft 18.11.2026: je 13 H, 3 B)
  - [x] Kein anderes Produkt trägt H oder B; V bei denselben Produkten wie bisher (Olivenbrot und Tomatenbrot je mit V, weil getrennt; neu 23 V in der Liste pro Sprache)
  - [x] Sparten, Produkte und Preise im Brotladen entsprechen der Preisliste (mit den genannten Ausnahmen; alter und neuer Stand Zeile für Zeile verglichen, keine Preisänderung ausser Fondue)
  - [x] Legende mit H, B und V sichtbar unter dem Brotladen – DE und EN
  - [x] Fonduemischung zeigt 11.00 pro Person (200 g)
  - [x] Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler
  - [x] B-Kästchen weiss mit braunem Rand und brauner Schrift, H unverändert braun ausgefüllt – in Liste und Legende, DE und EN (lokal geprüft 18.11.2026: je 4 B inkl. Legende, keine Konsolenfehler)

### A-20 Brotladen: vier neue Produkte unter «Süsses»
- Priorität: Soll · Status: freigegeben durch Vreny (18.11.2026: Preise und «alle 4 mit H», «ja auch auf die Website»)
- Quelle: Angaben Vreny 18.11.2026, gleich wie in `Geschäft\Bä\Preislisten\Preisliste-neu-Entwurf.xlsx` (dort am 18.11.2026 nachgeführt).
- Neu in der Sparte «Süsses» (DE und EN), alle mit Zeichen H (hausgemacht), Reihenfolge wie Preisliste:
  - Mini Berliner 1.80 (nach Donut) – EN «Mini Berliner (filled doughnut)»
  - Schnäggini 2.80 (nach Muffin) – EN «Schnäggini»
  - Cheese-Cake 4.50 (nach Torte, Stück) – EN «Cheesecake»
  - Nutella-Türmli 8.50 (nach Tiramisu) – EN «Nutella-Türmli» (Schreibweise mit Bindestrich: Entscheid Vreny 18.11.2026)
- Annahme (Claude): EN-Bezeichnungen wie oben; Vreny kann sie ändern lassen.
- Abnahmekriterien:
  - [x] Die vier Produkte stehen mit Preis und H in «Süsses» – DE und EN, Reihenfolge wie oben (lokal geprüft 18.11.2026: je 18 H inkl. Legende, vorher 14)
  - [x] Übrige Produkte und Preise im Brotladen unverändert (Diff: nur 4 neue Zeilen pro Sprache)
  - [x] Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler (375 und 1280 px geprüft)

### A-21 Mindestaufenthalt der Unterkünfte
- Priorität: Muss · Status: freigegeben durch Vreny (19.11.2026: «Mindestaufenthalt noch nachtragen: Eggeri und Efeu 2 Nächte, Kornstadel 3 Nächte»)
- Apartment EFEU: mindestens 2 Nächte · Apartment EGGERI: mindestens 2 Nächte · Kornstadel ARIDA PRATA: mindestens 3 Nächte.
- Angezeigt auf der jeweiligen Unterkunftsseite im Preiskasten (unter «1–… Personen, alles inklusive») und auf der Startseite in der Karte der Unterkunft (bei Preis und Personenzahl) – DE und EN.
- DE «Mindestaufenthalt: 2 Nächte» / Karte «mind. 2 Nächte»; EN «Minimum stay: 2 nights» / Karte «min. 2 nights».
- Nicht Teil dieser Anforderung: Einstellung im Buchungssystem easybooking (macht Vreny dort selbst).
- Abnahmekriterien:
  - [x] Alle drei Unterkunftsseiten zeigen den richtigen Mindestaufenthalt – DE und EN (lokal geprüft 19.11.2026)
  - [x] Startseite zeigt ihn in allen drei Karten – DE und EN (EFEU 2, EGGERI 2, ARIDA 3)
  - [x] Handy (375 px, kein seitliches Scrollen) und Desktop in Ordnung, keine Konsolenfehler (nur die bekannten easybooking-Meldungen auf localhost)

### A-22 Pauschalpreis ohne «egal wie viele Gäste», maximale Personenzahl verbindlich
- Priorität: Muss · Status: freigegeben durch Vreny (19.11.2026: «die Maximal-Belegung muss zwingend eingehalten werden», Vorschlag «ja ok so»)
- Startseite, Vorteile: «Pauschalpreis pro Nacht – Ein Preis für das ganze Apartment, alles inklusive. Keine Zusatzkosten vor Ort.» (statt «egal wie viele Gäste»)
- Startseite, Preise: «Ein Tagespauschalpreis für das ganze Apartment – alles inklusive, keine weiteren Kosten vor Ort. Die angegebene maximale Personenzahl ist verbindlich.» (statt «unabhängig von der Anzahl Gäste»)
- Unterkunftsseiten (Preiskasten) und Startseiten-Karten: «max. 6/4 Personen» bzw. «max. 6/4 Pers.» statt «1–6/1–4».
- EN entsprechend: «One flat rate for the whole apartment, everything included.» / «The stated maximum number of guests is binding.» / «max. 6/4 guests».
- Abnahmekriterien:
  - [x] «egal wie viele Gäste», «unabhängig von der Anzahl Gäste», «no matter how many guests», «regardless of the number of guests» kommen nicht mehr vor
  - [x] Satz zur verbindlichen Personenzahl steht bei «Preise» – DE und EN
  - [x] Preiskästen und Karten zeigen «max. …» – DE und EN
  - [x] Handy und Desktop in Ordnung, keine neuen Konsolenfehler (lokal geprüft 19.11.2026, 375 px ohne seitliches Scrollen)

### A-23 Stornierung: später als 14 Tage vor Anreise zwei Übernachtungen
- Priorität: Muss · Status: freigegeben durch Vreny (19.11.2026: «bei Stornierung ab 14 Tage 2 Übernachtungen»)
- Startseite, Preise · Stornierung: «Bis 14 Tage vor Anreise kostenlos. Bei späterer Stornierung verrechnen wir zwei Übernachtungen.» (bisher «eine Übernachtung»); EN «… we charge two nights.»
- Hinweise «Kostenlos stornierbar bis 14 Tage vor Anreise» bleiben unverändert.
- Abnahmekriterien:
  - [x] DE und EN zeigen «zwei Übernachtungen» / «two nights»; «eine Übernachtung» / «one night» kommt nicht mehr vor (lokal geprüft 19.11.2026)

### A-24 E-Mail-Adresse Swiss-Knife-Shop
- Priorität: Soll · Status: freigegeben durch Vreny (20.11.2026: swissknifeshop@bluewin.ch «läuft», soll auf die Website: «ja bitte»; Vorschlag «Ja, umsetzen»)
- Impressum, Abschnitt «Kontakt»: bisher eine Zeile «z'Pfünderli und Swiss-Knife-Shop: +41 79 695 54 32 · pfuenderli@bluewin.ch». Neu zwei Zeilen:
  - «z'Pfünderli: +41 79 695 54 32 · pfuenderli@bluewin.ch»
  - «Swiss-Knife-Shop: +41 79 695 54 32 · swissknifeshop@bluewin.ch»
- Seite z'Pfünderli, Abschnitt «Swiss-Knife-Shop» (unter den Fotos): neue Zeile «Kontakt Swiss-Knife-Shop: +41 79 695 54 32 · swissknifeshop@bluewin.ch» (Telefon und E-Mail als Link).
- EN entsprechend: «z'Pfünderli: …» / «Swiss Knife Shop: …» bzw. «Contact Swiss Knife Shop: …».
- Unverändert: Apartments (brv@bluewin.ch), Fusszeile der Pfünderli-Seite (pfuenderli@bluewin.ch), Datenschutz.
- Abnahmekriterien:
  - [x] swissknifeshop@bluewin.ch steht im Impressum und im Shop-Abschnitt – DE und EN, als funktionierender mailto-Link (lokal geprüft 20.11.2026)
  - [x] z'Pfünderli behält pfuenderli@bluewin.ch, Apartments brv@bluewin.ch (lokal geprüft 20.11.2026)
  - [x] Handy und Desktop in Ordnung, keine neuen Konsolenfehler (lokal geprüft 20.11.2026, 375 px ohne seitliches Scrollen)

### A-25 Zeichen H und B: Stil getauscht
- Priorität: Soll · Status: freigegeben durch Vreny (20.11.2026: «braunes H in leerem Kästchen nur Rand braun»; auf den Hinweis, dass H und B dann gleich aussähen: «B anders machen» → «Braun gefüllt», «B mit braunem Kästchen»)
- Seite z'Pfünderli (DE und EN), überall wo die Zeichen vorkommen, auch in der Legende:
  - **H** (hausgemacht): bisher brauner Hintergrund mit weissem Buchstaben. Neu: Hintergrund leer (weiss), brauner Rand, brauner Buchstabe H.
  - **B** (nur auf Bestellung): bisher weiss mit braunem Rand. Neu: braunes Kästchen mit weissem Buchstaben B.
- Unverändert: **V** (grün, weisser Buchstabe). Ändert die Darstellung aus A-19.
- Abnahmekriterien:
  - [x] H erscheint als leeres Kästchen mit braunem Rand und braunem Buchstaben – DE und EN (lokal geprüft 20.11.2026)
  - [x] B erscheint als braunes Kästchen mit weissem Buchstaben – DE und EN (lokal geprüft 20.11.2026)
  - [x] V unverändert (lokal geprüft 20.11.2026)
  - [x] Handy und Desktop in Ordnung, keine neuen Konsolenfehler (lokal geprüft 20.11.2026, 375 px ohne seitliches Scrollen)

### A-26 Preisvermerk «Stand Winter 2027»
- Priorität: Soll · Status: freigegeben durch Vreny (20.11.2026: Preisliste umbenannt auf «Preisliste Winter 2027», Vermerk dort geändert; Website: «Ja, Website auch»)
- Seite z'Pfünderli, Vermerk unter den Preislisten:
  - DE: «Preise in CHF, Stand Sommer 2026, Änderungen vorbehalten.» → «Preise in CHF, Stand Winter 2027, Änderungen vorbehalten.»
  - EN: «Prices in CHF, as of summer 2026, subject to change.» → «Prices in CHF, as of winter 2027, subject to change.»
- Preise selbst unverändert.
- Abnahmekriterien:
  - [x] Vermerk DE und EN zeigt Winter 2027, kein «Sommer 2026» / «summer 2026» mehr auf der Website (lokal geprüft 20.11.2026)
  - [x] Handy und Desktop in Ordnung, keine neuen Konsolenfehler (lokal geprüft 20.11.2026, 375 px ohne seitliches Scrollen)

### A-27 Raclette du Valais AOP
- Priorität: Soll · Status: freigegeben durch Vreny (20.11.2026: Raclette mit der roten Etikette aus Turtmann = «Raclette du Valais AOP» der Augstbordkäserei; auf Preisliste und Menükarte mit AOP, auch auf der Pizza; «Ja, Website auch»)
- Seite z'Pfünderli, wie Preisliste Winter 2027:
  - Käse & Fondue: «Raclettekäse der Augstbordkäserei» → «Raclette du Valais AOP Turtmann» (EN: «Raclette cheese from the Augstbord dairy» → «Raclette du Valais AOP Turtmann»)
  - Pizza Walliser: «Raclettekäse» → «Raclette du Valais AOP» (EN: «raclette cheese» → «Raclette du Valais AOP»)
- Abnahmekriterien:
  - [x] Beide Stellen DE und EN geändert, kein anderer Text verändert (lokal geprüft 20.11.2026)
  - [x] Handy und Desktop in Ordnung, keine neuen Konsolenfehler (lokal geprüft 20.11.2026, 375 px ohne seitliches Scrollen)

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
| 0.9 | 8.11.2026 | A-11: Originalfarben easybooking (orange), Scrollen an den Anfang der Buchungsmaske nach jedem Schritt |
| 0.10 | 9.11.2026 | A-13: Titel der drei Schwerpunkte im Titelbild anklickbar |
| 0.11 | 10.11.2026 | A-14: vegane Produkte im Brotladen mit «V» gekennzeichnet (Quelle: Fredy's vegane Produkteliste) |
| 0.12 | 17.11.2026 | A-15: Vorschaubild Brotkorb für Google, grosse Vorschaubilder erlaubt, Website-Name «z'Pfünderli Grächen» |
| 0.13 | 17.11.2026 | A-16: Sparten der Bistro-Karte und des Brotladens aufklappbar |
| 0.14 | 17.11.2026 | A-17: Sparten klappen beim Öffnen auf wie ein Blatt (Animation) |
| 0.15 | 17.11.2026 | A-18: Neuheiten, saisonale Angebote und Aktionen mit Ablaufdatum |
| 0.16 | 18.11.2026 | A-19: Brotladen nach Preisliste – Zeichen H und B, Sortiment und Reihenfolge, Fondue-Preis 11.00 p. P., Pizza 27 cm |
| 0.17 | 18.11.2026 | A-19 ergänzt: Zeichen B umgekehrt (weiss mit braunem Rand) |
| 0.18 | 18.11.2026 | A-20: Mini Berliner, Schnäggini, Cheese-Cake, Nutella-Türmli im Brotladen (H) |
| 0.19 | 19.11.2026 | A-21: Mindestaufenthalt EFEU/EGGERI 2 Nächte, Kornstadel 3 Nächte |
| 0.20 | 19.11.2026 | A-22: Pauschalpreis-Text ohne «egal wie viele Gäste», maximale Personenzahl verbindlich |
| 0.21 | 19.11.2026 | A-23: Stornierung später als 14 Tage vor Anreise: zwei Übernachtungen |
| 0.22 | 20.11.2026 | A-24: E-Mail-Adresse Swiss-Knife-Shop (swissknifeshop@bluewin.ch) im Impressum und im Shop-Abschnitt |
| 0.23 | 20.11.2026 | A-25: Zeichen H weiss mit braunem Rand, Zeichen B braun gefüllt (Stil getauscht) |
| 0.24 | 20.11.2026 | A-26: Preisvermerk «Stand Winter 2027» |
| 0.25 | 20.11.2026 | A-27: Raclette du Valais AOP (Käse & Fondue, Pizza Walliser) |
