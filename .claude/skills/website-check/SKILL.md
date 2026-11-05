---
name: website-check
description: Qualitätsprüfung einer Website vor der Veröffentlichung – Barrierefreiheit, SEO, Performance, defekte Links, Rechtliches und Rechtschreibung. Verwenden bei "prüf die Website", "ist alles bereit", "SEO", "Barrierefreiheit", "schneller machen", "vor dem Online-Stellen".
---

# Website-Check

Alle HTML-Dateien des Projekts durchgehen und gegen diese Liste prüfen. Ergebnis als kurze Tabelle berichten: ✅ ok / ⚠️ verbesserbar / ❌ Fehler – dann die Fehler beheben (bei grösseren Änderungen vorher fragen).

## 0. Spezifikation
- alle Muss-Anforderungen in `SPEC.md` umgesetzt und ihre Abnahmekriterien geprüft
- keine offenen Fragen mehr, die die Veröffentlichung betreffen
- nichts gebaut, was nicht spezifiziert ist (sonst nachträglich aufnehmen oder entfernen – Benutzer fragen)

## 1. Barrierefreiheit (WCAG AA)
- `lang`-Attribut im `<html>` korrekt
- genau ein `<h1>`, logische Überschriften-Reihenfolge
- alle `<img>` mit sinnvollem `alt`
- Formularfelder mit `<label>`
- Farbkontrast Text ≥ 4.5:1
- per Tastatur bedienbar (Tab-Reihenfolge, sichtbarer Fokus, Skip-Link)
- Links mit aussagekräftigem Text (nicht "hier klicken")

## 2. SEO
- eindeutiger `<title>` (≤ 60 Zeichen) und `meta description` (≤ 160 Zeichen) pro Seite
- Open-Graph-Tags für Social-Media-Vorschau (`og:title`, `og:description`, `og:image`)
- sprechende Dateinamen (`leistungen.html`, nicht `seite2.html`)
- `robots.txt` und `sitemap.xml` im Hauptordner (vor Veröffentlichung, mit der echten Domain)
- Favicon vorhanden

## 3. Performance
- Bilder nicht grösser als nötig (Richtwert: < 300 KB, Breite max. ~2000 px), WebP/AVIF
- `loading="lazy"` für Bilder unterhalb des sichtbaren Bereichs
- Skripte mit `defer`, keine unnötigen externen Bibliotheken
- keine ungenutzten grossen CSS-/JS-Dateien

## 4. Technik
- alle internen Links und Bildpfade existieren (Dateien im Ordner abgleichen)
- Gross-/Kleinschreibung der Pfade stimmt (Webserver sind oft case-sensitive!)
- keine Konsolenfehler (mit Skill `website-vorschau` prüfen)
- gültiges HTML (keine ungeschlossenen Tags, keine doppelten `id`s)

## 5. Inhalt & Rechtliches
- keine Platzhalter mehr (`[Text folgt]`, "Lorem ipsum", Beispiel-Telefonnummern)
- Rechtschreibung und einheitliche Schreibweise (Schweiz: "ss" statt "ß")
- Impressum und Datenschutzerklärung vorhanden und im Footer verlinkt
- externe Dienste (Google Fonts, Maps, Analytics, YouTube) in der Datenschutzerklärung erwähnt oder vermieden
- Copyright-Jahr im Footer aktuell
