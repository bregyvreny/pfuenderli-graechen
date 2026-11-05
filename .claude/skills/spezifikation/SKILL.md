---
name: spezifikation
description: Spezifikationsgetriebenes Arbeiten – gemeinsam eine Spezifikation (SPEC.md) mit nummerierten Anforderungen und Abnahmekriterien schreiben, danach strikt nach Spezifikation umsetzen und gegen sie prüfen. Verwenden, wenn eine Funktion, Seite oder Änderung geplant oder umgesetzt wird, bei "Spezifikation", "Spec", "Anforderungen", "nach Spec umsetzen", "ist das spezifiziert", und immer bevor neue Seiten oder Funktionen gebaut werden.
---

# Spezifikation schreiben und danach umsetzen

Grundsatz: **Erst spezifizieren, dann bauen.** Die Datei `SPEC.md` im Projektordner ist die verbindliche Quelle dafür, was gebaut wird. Was nicht in der Spezifikation steht, wird nicht gebaut – es wird zuerst ergänzt und vom Benutzer bestätigt.

## Phase 1 – Spezifikation schreiben

1. `PLAN.md` (falls vorhanden) und bestehende `SPEC.md` lesen. Bestehende Anforderungen nicht stillschweigend ändern.
2. Offene Punkte als **konkrete Fragen** an den Benutzer stellen (max. 4 auf einmal). Nichts erfinden – siehe Skill `kritisch-bleiben`.
3. Anforderungen in `SPEC.md` nach der Vorlage unten schreiben:
   - jede Anforderung hat eine **ID** (`A-01`, `A-02` …), damit man sich darauf beziehen kann
   - jede Anforderung ist **prüfbar**: Abnahmekriterien so formulieren, dass man klar mit Ja/Nein prüfen kann
   - Priorität: **Muss** / **Soll** / **Kann**
   - Ungeklärtes kommt unter "Offene Fragen", nicht in die Anforderungen
   - ausdrücklich festhalten, was **nicht** dazugehört (Abgrenzung)
4. Spezifikation dem Benutzer zusammenfassen und **Freigabe einholen**. Status auf `Freigegeben` setzen erst nach seinem OK.

## Vorlage `SPEC.md`

```markdown
# Spezifikation: <Name der Website>

Status: Entwurf | Freigegeben   ·   Version: 0.1   ·   Stand: <Datum>

## 1. Ziel und Zielgruppe
<2–4 Sätze>

## 2. Seiten (Sitemap)
| Seite | Datei | Zweck |
|---|---|---|

## 3. Anforderungen

### A-01 <Kurztitel>
- Priorität: Muss
- Beschreibung: <was, nicht wie>
- Abnahmekriterien:
  - [ ] <prüfbares Kriterium>
  - [ ] <prüfbares Kriterium>
- Status: offen | umgesetzt | geprüft

## 4. Nicht-funktionale Anforderungen
- Darstellung auf Handy (ab 375 px), Tablet, Desktop
- Barrierefreiheit WCAG 2.1 AA
- Sprache / Rechtschreibung: <z. B. Deutsch, Schweiz>
- Datenschutz: <z. B. keine externen Dienste ohne Erwähnung>

## 5. Abgrenzung (nicht Teil dieses Projekts)
- …

## 6. Offene Fragen
- [ ] F-01 <Frage> – wer entscheidet: Benutzer

## 7. Änderungsprotokoll
| Version | Datum | Änderung |
|---|---|---|
```

## Phase 2 – Nach Spezifikation umsetzen

1. Nur Anforderungen mit Status `Freigegeben` umsetzen. Bei Entwurf: zuerst Freigabe holen.
2. Vor Beginn sagen, **welche Anforderungs-IDs** jetzt umgesetzt werden.
3. Genau das bauen, was spezifiziert ist – nicht mehr, nicht weniger. Gute zusätzliche Ideen **vorschlagen**, aber nicht einbauen.
4. Wird während der Umsetzung eine Lücke oder ein Widerspruch entdeckt: **anhalten**, Frage stellen, `SPEC.md` ergänzen (neue Version + Eintrag im Änderungsprotokoll), dann weiter.
5. In Code-Kommentaren bei grösseren Abschnitten auf die ID verweisen, z. B. `<!-- A-03 Kontaktformular -->`.

## Phase 3 – Gegen Spezifikation prüfen

1. Jedes Abnahmekriterium einzeln prüfen (im Browser mit Skill `website-vorschau`, im Code, oder beides).
2. Häkchen nur setzen, wenn **tatsächlich geprüft** – nicht weil es "sicher funktioniert".
3. Status pro Anforderung aktualisieren (`umgesetzt` → `geprüft`).
4. Dem Benutzer berichten als Tabelle: ID · Titel · Ergebnis (✅ erfüllt / ❌ nicht erfüllt / ⚠️ nicht prüfbar, warum).
5. Abweichungen zwischen Umsetzung und Spezifikation ehrlich nennen.

## Änderungswünsche

Neue Wünsche des Benutzers zuerst als Anforderung in `SPEC.md` aufnehmen (oder bestehende ändern), Version erhöhen, kurz bestätigen lassen, dann umsetzen. Kleine Korrekturen (Tippfehler, Farbton) brauchen keine neue Anforderung.
