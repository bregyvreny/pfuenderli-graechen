# Projekt-Übergabe: Redesign apartments-bregy

Diese Datei fasst den bisherigen Chat zusammen. Füge sie in einem neuen Chat ein oder hänge sie an und schreib dazu: «Lies diese Übergabe und mach mit dem Projekt weiter.»

**Stand:** 5. November 2026
**Entwurf (Design-Canvas):** https://claude.ai/artifact/5Da4MRE3d6jygz2BJVX1Dn (privat, nur für Vreny sichtbar)

---

## 1. Ausgangslage

- **Gastgeber:** Vreny & Michel Bregy-Brigger, Halbsucht 273, 3925 Grächen
- **Kontakt:** +41 79 331 61 47, brv@bluewin.ch
- **Heutige Webseite:** bregy-vreny.ch (WordPress 5.8, Theme «Sonar»)
- **Probleme der heutigen Seite:**
  - Alle Seiten stehen auf «noindex, nofollow», Google zeigt die Seite also nicht an. Korrektur in WordPress unter Einstellungen → Lesen.
  - WordPress 5.8 ist veraltet und bekommt keine Sicherheitsupdates mehr.
  - apartments-bregy.ch leitet auf eine leere WordPress-Anmeldeseite (wp-signup.php) weiter, statt auf die Webseite.
- **Zugang:** Vreny war bei WordPress.com angemeldet, das ist aber nicht ihre Seite. Die Seite hat eine eigene Anmeldung unter bregy-vreny.ch/wp-admin. Die Zugangsdaten hat die Person, die die Seite eingerichtet hat. Vreny fragt dort nach WordPress-Zugang, Hosting-Anbieter, Domains und der Weiterleitung von apartments-bregy.ch.

## 2. Entwurf: was steht

Der Canvas enthält 8 Seiten:

| Datei | Inhalt |
|---|---|
| Main.dc.html | Startseite Deutsch |
| Main-EN.dc.html | Startseite Englisch |
| Efeu / Eggeri / Arida.dc.html | Unterseiten Deutsch, mit allen Fotos |
| Efeu-EN / Eggeri-EN / Arida-EN.dc.html | Unterseiten Englisch |

**Gestaltung:**

- Farben: Waldgrün `#2E5A44` als Hauptfarbe, Rostbraun `#9A4A1F` als Akzent, Untergrund `#F5F4F0`, Text `#1A1F1C` und `#55605A`
- Schriften: Archivo für Titel, Source Sans 3 für Text

**Abschnitte der Startseite:** Titelbild, Suchleiste, Vorteile, drei Wohnungskarten, Galerien, z'pfünderli & Swiss-Knife-Shop, Lage & Anreise, easybooking-Buchungsbereich (Platzhalter), Preise/Zahlung/Storno/Sauna, Kontakt.

## 3. Die Wohnungen

Alle Preise gelten **pauschal pro Apartment und Nacht, alles inklusive**.

**Chalet EFEU – «mit Stil & Tradition»**
- CHF 300 pro Nacht, 1–6 Personen
- 2 Doppel- und 2 Einzelzimmer (2 mit Lavabo), Wohnküche, Dusche/WC, Balkon mit Blick auf Brunegghorn und Weisshorn
- WLAN, TV, Geschirrspüler, Nespresso, Fondue- und Raclette-Set
- Hauptfoto: das Südzimmer (Vrenys Wunsch)

**Apartment EGGERI im Haus Silberblick – «das Sportliche»**
- CHF 220 pro Nacht, 1–4 Personen
- Oberste Etage ohne Lift, daher der Name «das Sportliche». Blick auf das Bietschhorn und den alten Dorfkern.
- 2 Doppelzimmer (Nord/Süd), grosses Wohnzimmer, Küche, Dusche/WC, Balkon
- WLAN, TV, Backofen, Mikrowelle, Geschirrspüler, Nespresso, Fondue- und Raclette-Set
- Vreny findet die Aussenansicht vom Haus Silberblick nicht schön, deshalb ist das Hauptfoto der Balkon.

**Kornstadel ARIDA PRATA – «Natur pur»**
- CHF 300 pro Nacht, 1–4 Personen
- Bewusst ohne WLAN und TV. Kochen auf dem Holzherd, Warmwasser aus dem Holzboiler.
- 1 Schlafraum mit Doppelbett, Galerie für 2 Personen, Stube, Dusche/WC an der Felswand
- Balkon mit Bergblick, Liegen in der Wiese, grosser Tisch mit Grillstelle
- Steinböcke sind oft zu Gast.
- Hauptfoto: Blumenwiese (Vreny will es so lassen)

## 4. Sauna

- Liegt im Haus EFEU, getrennt von den Apartments. Gäste von EFEU und EGGERI können sie benutzen.
- Wählbar als Dampfsauna (55 °C) oder finnische Sauna (ca. 85 °C)
- Preis: CHF 30 Grundgebühr plus CHF 15 pro Person, inklusive Wasser, Tee und Frottiertücher
- Anmeldung ca. 1 Stunde im Voraus

## 5. Zahlung und Storno

- **Zahlung:** vor Ort bar oder mit Kreditkarte, oder im Voraus per Banküberweisung
- **Storno:** bis 14 Tage vor Anreise kostenlos, danach wird eine Übernachtung verrechnet

## 6. Anreise

- **Allgemein:** mit dem Zug bis St. Niklaus, dann mit dem Postauto nach Grächen
- **ARIDA PRATA:** Parkplatz an der Strasse beim Haus Mustang, von dort ca. 300 m zu Fuss. Das Gepäck muss getragen werden.
- **EFEU & EGGERI:** Beide liegen im autofreien Dorfteil. Gäste melden sich ca. 30 Minuten vor der Ankunft. Treffpunkt ist der Dorfplatz neben dem Tourismusbüro, dort gibt es Kurzzeitparkplätze. Vreny und Michel holen die Gäste mit dem Elektrowagen ab, zeigen ihnen den Parkplatz im Zentrum und bringen sie zum Apartment.

## 7. Buchung

- Channelmanager: **easybooking.at**. Der Einbau-Code kommt aus dem easybooking-Konto unter «Web-Widgets».
- Farben für das Widget:

| Wofür | Farbe |
|---|---|
| Hauptfarbe | `#2E5A44` |
| Hover | `#1C3A2B` |
| Text | `#1A1F1C` |
| Rahmen | `#C9C5BB` |
| belegte Tage | `#DCD8CF` |

## 8. z'pfünderli & Swiss-Knife-Shop

- z'pfünderli: Bäckerei und z'Morgund-Bar
- Swiss-Knife-Shop: Victorinox-Partner
- Öffnungszeiten laut alter Seite: täglich 06.59–19.01 Uhr
- **Nächster Schritt (geplant für morgen):** eigene Abschnitte bzw. Seiten für den Swiss-Knife-Shop und das z'pfünderli
  - Vreny bringt Sortiment, Spezialitäten und Öffnungszeiten mit.
  - Fotos vom z'pfünderli sind schon vorhanden. Für den Shop werden noch Fotos gebraucht.

## 9. Fotos

Die Fotos liegen auf Vrenys PC unter `C:\Users\vreny bregy\OneDrive\Bilder\Bilder\apartments\` in den Unterordnern **ARIDA PRATA**, **Efeu**, **Silberblick** (= EGGERI) und **zPfünderli**. Die verwendeten Fotos sind bereits im Canvas hochgeladen.

## 10. Offene Punkte

- [ ] Swiss-Knife-Shop und z'pfünderli ausbauen (morgen)
- [ ] Zugangsdaten für WordPress und Hosting besorgen
- [ ] Haken bei «noindex» entfernen
- [ ] apartments-bregy.ch richtig weiterleiten
- [ ] easybooking-Widget-Code einbauen
- [ ] Entwurf auf die echte Webseite übertragen
- [ ] Impressum und Datenschutz für die neue Seite prüfen
