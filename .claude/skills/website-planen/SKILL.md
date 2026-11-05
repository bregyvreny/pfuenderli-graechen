---
name: website-planen
description: Plant eine neue Website oder einen neuen Bereich, bevor Code geschrieben wird – Ziel, Zielgruppe, Seitenstruktur (Sitemap), Inhalte pro Seite und technischer Ansatz. Verwenden, wenn der Benutzer eine Website starten, neu strukturieren oder eine neue Seite hinzufügen will, oder sagt "lass uns planen", "welche Seiten brauche ich", "Sitemap".
---

# Website planen

Ziel: Vor dem Bauen ein klares, kurzes Konzept haben, das in `PLAN.md` im Projektordner festgehalten wird.

## Ablauf

1. **Fragen klären** (nur was noch nicht bekannt ist, max. 4 Fragen auf einmal):
   - Zweck der Website (Firma, Portfolio, Verein, Shop, Event, Blog …)
   - Zielgruppe und wichtigste Handlung der Besucher (anrufen, Formular, kaufen, informieren)
   - Sprache(n) der Website (z. B. Deutsch, Französisch – Schweiz: "ss" statt "ß")
   - Vorhandenes Material: Logo, Farben, Fotos, Texte
   - Gewünschter Stil (seriös, verspielt, minimalistisch …) und Beispiel-Websites, die gefallen

2. **Sitemap vorschlagen** – so wenig Seiten wie möglich, typisch:
   - Startseite, Über uns, Angebot/Leistungen, Kontakt, Impressum, Datenschutz
   - Bei kleinen Projekten: eine einzige Seite (One-Pager) mit Abschnitten bevorzugen.

3. **Pro Seite festhalten:** Zweck, Abschnitte (Hero, Vorteile, Referenzen, Call-to-Action …), benötigte Inhalte.

4. **Technischen Ansatz wählen** (Standard für Einsteiger: einfachste Variante):
   - **Standard:** reines HTML + CSS (+ wenig JavaScript), keine Build-Tools. Läuft überall, einfach zu hosten.
   - Nur bei Bedarf: Static-Site-Generator (z. B. Astro, Eleventy) für viele Seiten/Blog; CMS für Kunden, die selbst Inhalte pflegen.

5. **`PLAN.md` schreiben** mit: Ziel, Zielgruppe, Sitemap, Inhalte pro Seite, Stil, Technik, offene Punkte.

## Ordnerstruktur (Standard)

```
website/
├── index.html
├── kontakt.html
├── impressum.html
├── datenschutz.html
├── css/
│   └── style.css
├── js/
│   └── main.js
├── assets/
│   ├── img/
│   └── fonts/
└── PLAN.md
```

## Hinweise

- Rechtliches (Schweiz/EU): Impressum und Datenschutzerklärung einplanen (revDSG / DSGVO). Keine Rechtsberatung geben, aber darauf hinweisen.
- Keine Annahmen: Fehlende Angaben als offene Fragen in `PLAN.md` festhalten (Skill `kritisch-bleiben`).
- Nach dem Plan: weiter mit dem Skill `spezifikation` (Anforderungen in `SPEC.md` festlegen und freigeben lassen), dann `design-system` und `seite-bauen`.
