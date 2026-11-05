# easybooking – Daten für die Einbindung

Stand: 5.11.2026, ausgelesen aus der easybooking-Vorschau (Link von Vreny).

## Kunden-Daten

| Wert | Inhalt |
|---|---|
| Kunden-ID (`cid` / `customerId`) | `7233` |
| Seriennummer (`serialNo`, wie von den Widgets verwendet) | `7639-1754-6482` |
| Sprache Deutsch (`lid`) | `2` (die Vorschau ist mit `lid=2` deutsch) |
| Sprache Englisch | **nicht bestätigt** – vermutlich `1`, noch testen |

## Kategorien (= Wohnungen)

| Kategorie-ID | Name in easybooking | Auf der Website |
|---|---|---|
| `11` | apartment EFEU «stil & tradition» | Chalet EFEU |
| `15` | korn-stadel ARIDA PRATA «Natur pur» | Kornstadel ARIDA PRATA |
| `21` | apartment EGGERI «das sportliche» | Apartment EGGERI |
| `24` | studio ROSELINE «smart & apart» | **fehlt auf der Website** – klären |

In Kategorie 11 gibt es zwei Einheiten: «1» und «ÜB-5-EFEU» – Bedeutung klären.

## Links, wie easybooking sie selbst erzeugt

- Buchen: `https://www.easy-booking.at/bookingengine2/#/7233/2/category/11`
- Anfrage: `https://www.easy-booking.at/enquiryForm/7233/2?catId=11`

Laut Doku mit Daten: `#<cid>/<lid>/<Anreise JJJJ-MM-TT>/<Abreise>/<Erwachsene>/<Kinder>/category/<Kategorie-ID>`

## Offene Punkte

- [ ] **Buchungsseite lädt nicht:** Beim Test am 5.11.2026 blieb die Buchungsseite leer – auch mit dem Original-Link aus der Vorschau. Der Server antwortet bei `api/webClientCustomer/7233/2` mit **403 Forbidden**. Ursache unbekannt (Online-Buchung deaktiviert? Sperre für bestimmte Browser?). Vreny testet den Link im eigenen Browser; sonst easybooking-Support fragen.
- [ ] Sprach-ID Englisch bestätigen.
- [ ] Studio ROSELINE: auf die Website oder nicht?
- [x] Adresse: easybooking zeigt «Dorfstrasse 152, 3925 Grächen», die Website «Halbsucht 273, 3925 Grächen» – welche stimmt? → **Dorfstrasse 152** (von der Gemeinde neu vergeben), Website angepasst.
- [ ] Preise in easybooking: Hinweis «Es wurden noch nicht alle Preise bestätigt».
