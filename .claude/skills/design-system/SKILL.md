---
name: design-system
description: Legt das visuelle Grundgerüst einer Website fest – Farben, Schriften, Abstände, Buttons – als CSS-Variablen in css/style.css. Verwenden, wenn ein Design/Look definiert oder geändert werden soll, bei "Farben", "Schrift", "Stil", "Theme", "Dark Mode", oder bevor die erste Seite gebaut wird.
---

# Design-System erstellen

Ziel: Ein einheitliches Aussehen über alle Seiten, zentral steuerbar über CSS-Variablen.

## Ablauf

1. Vorhandenes prüfen: `PLAN.md`, Logo, bestehende `css/style.css`. Bestehende Variablen erweitern, nicht ersetzen.
2. Falls keine Vorgaben: **2–3 Farbvorschläge** kurz beschreiben (Hauptfarbe, Akzent, Neutraltöne) und den Benutzer wählen lassen.
3. Design-Tokens als CSS-Variablen in `:root` schreiben (Vorlage unten).
4. Basis-Styles: Reset, Typografie, Links, Buttons, Container, Abschnitte.
5. Kontrast prüfen: Text auf Hintergrund mind. **4.5:1** (WCAG AA), grosser Text 3:1.

## Vorlage `css/style.css`

```css
:root {
  /* Farben */
  --color-primary: #1f5f8b;
  --color-primary-dark: #164766;
  --color-accent: #e8a33d;
  --color-bg: #ffffff;
  --color-surface: #f5f6f8;
  --color-text: #1c1f23;
  --color-text-muted: #5b6370;
  --color-border: #dde1e6;

  /* Schrift */
  --font-body: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif;
  --font-heading: var(--font-body);
  --fs-sm: 0.875rem;
  --fs-base: 1rem;
  --fs-lg: 1.25rem;
  --fs-xl: clamp(1.5rem, 2.5vw, 2rem);
  --fs-2xl: clamp(2rem, 5vw, 3.25rem);
  --lh: 1.6;

  /* Abstände & Formen */
  --space-1: 0.25rem; --space-2: 0.5rem; --space-3: 1rem;
  --space-4: 1.5rem;  --space-5: 2.5rem; --space-6: 4rem;
  --radius: 8px;
  --shadow: 0 2px 12px rgb(0 0 0 / 0.08);
  --container: 1120px;
}

*, *::before, *::after { box-sizing: border-box; }
body { margin: 0; font-family: var(--font-body); font-size: var(--fs-base);
       line-height: var(--lh); color: var(--color-text); background: var(--color-bg); }
img { max-width: 100%; height: auto; display: block; }
h1, h2, h3 { font-family: var(--font-heading); line-height: 1.2; margin: 0 0 var(--space-3); }
a { color: var(--color-primary); }
a:hover { color: var(--color-primary-dark); }
:focus-visible { outline: 3px solid var(--color-accent); outline-offset: 2px; }

.container { width: min(100% - 2rem, var(--container)); margin-inline: auto; }
.section { padding-block: var(--space-6); }
.btn { display: inline-block; padding: var(--space-2) var(--space-4); border-radius: var(--radius);
       background: var(--color-primary); color: #fff; text-decoration: none; font-weight: 600; }
.btn:hover { background: var(--color-primary-dark); color: #fff; }

@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition: none !important; scroll-behavior: auto !important; }
}
```

## Regeln

- In Seiten **nie** feste Farbwerte verwenden – immer `var(--…)`.
- Schriften: Systemschriften bevorzugen. Google Fonts nur wenn gewünscht – dann lokal in `assets/fonts/` ablegen (Datenschutz, kein Laden von Google-Servern).
- Dark Mode nur auf Wunsch: Variablen in `@media (prefers-color-scheme: dark)` überschreiben.
