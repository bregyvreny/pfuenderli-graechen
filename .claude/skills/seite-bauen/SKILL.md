---
name: seite-bauen
description: Baut eine neue HTML-Seite oder einen Abschnitt (Header, Hero, Karten, Galerie, Kontaktformular, Footer) mit sauberem, semantischem, responsivem HTML/CSS. Verwenden, wenn eine Seite oder Komponente erstellt oder umgebaut werden soll, z. B. "mach die Startseite", "füge einen Abschnitt hinzu", "baue ein Kontaktformular".
---

# Seite bauen

## Vor dem Bauen

- `SPEC.md` lesen: Nur bauen, was dort als Anforderung steht und freigegeben ist (Skill `spezifikation`). Fehlt die Anforderung, zuerst Spezifikation ergänzen und bestätigen lassen. Vorher sagen, welche Anforderungs-IDs umgesetzt werden.
- `PLAN.md` und `css/style.css` lesen. Vorhandene Variablen, Klassen und Header/Footer wiederverwenden.
- Bei bestehenden Seiten: denselben Aufbau und dieselbe Navigation übernehmen.

## Grundgerüst jeder Seite

```html
<!doctype html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Seitentitel – Name der Website</title>
  <meta name="description" content="Kurze Beschreibung der Seite (ca. 150 Zeichen).">
  <link rel="icon" href="assets/img/favicon.svg">
  <link rel="stylesheet" href="css/style.css">
  <script src="js/main.js" defer></script>
</head>
<body>
  <a class="skip-link" href="#inhalt">Zum Inhalt springen</a>
  <header class="site-header">…Logo + <nav aria-label="Hauptnavigation">…</nav></header>
  <main id="inhalt">
    <section class="section">…</section>
  </main>
  <footer class="site-footer">…Kontakt, Impressum, Datenschutz…</footer>
</body>
</html>
```

## Regeln

- **Semantik:** `header`, `nav`, `main`, `section`, `article`, `footer`. Genau **ein** `<h1>` pro Seite, Überschriften ohne Sprünge (h1 → h2 → h3).
- **Mobile first:** CSS zuerst für kleine Bildschirme, dann `@media (min-width: 768px)` usw. Layouts mit Flexbox/Grid, keine festen Breiten in px.
  ```css
  .grid { display: grid; gap: var(--space-4);
          grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); }
  ```
- **Bilder:** immer `alt`-Text (leer `alt=""` nur bei reiner Deko), `width`/`height` angeben, `loading="lazy"` ausser beim ersten grossen Bild. Formate WebP/AVIF bevorzugen.
- **Links/Buttons:** `<a>` für Navigation, `<button>` für Aktionen. Externe Links mit `rel="noopener"`.
- **Formulare:** jedes Feld mit `<label>`, passende `type` (email, tel), `required` wo nötig, `autocomplete`. Hinweis: Ein statisches Formular braucht einen Dienst zum Versenden (z. B. Formspree, Netlify Forms) – mit dem Benutzer klären.
- **Navigation auf Mobile:** Menü-Button mit `aria-expanded` und wenig JavaScript in `js/main.js`.
- **Keine Platzhalter-Lügen:** Wo echte Inhalte fehlen, deutlich markierte Platzhalter verwenden (z. B. `[Text folgt]`) und am Ende auflisten.
- Kein Inline-CSS; Styles in `css/style.css`, mit Kommentar-Überschrift pro Komponente.

## Nach dem Bauen

- Seite im Browser öffnen (Skill `website-vorschau`) und auf Handy- und Desktop-Breite prüfen.
- Neue Seite in der Navigation aller anderen Seiten verlinken.
- Abnahmekriterien der umgesetzten Anforderungen in `SPEC.md` prüfen und Status aktualisieren. Nur Geprüftes als erledigt melden.
