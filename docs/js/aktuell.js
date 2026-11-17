/* SPEC A-18: Neuheiten, saisonale Angebote und Aktionen
   Einträge tragen das Attribut data-eintrag und sind im HTML mit "hidden" ausgeblendet.
   Optional: data-ab="JJJJ-MM-TT" (ab diesem Tag sichtbar), data-bis="JJJJ-MM-TT" (bis und mit diesem Tag sichtbar).
   Dieses Skript blendet gültige Einträge ein. Ein Behälter mit data-aktuell wird nur gezeigt,
   wenn er mindestens einen sichtbaren Eintrag enthält. Ohne JavaScript bleibt alles ausgeblendet. */
(function () {
  var d = new Date();
  var heute = d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0');

  document.querySelectorAll('[data-eintrag]').forEach(function (el) {
    var ab = el.getAttribute('data-ab');
    var bis = el.getAttribute('data-bis');
    var gueltig = (!ab || heute >= ab) && (!bis || heute <= bis);
    el.hidden = !gueltig;
  });

  document.querySelectorAll('[data-aktuell]').forEach(function (box) {
    box.hidden = !box.querySelector('[data-eintrag]:not([hidden])');
  });

  if (location.hash === '#aktuell') {
    var ziel = document.getElementById('aktuell');
    if (ziel && !ziel.hidden) ziel.scrollIntoView();
  }
})();
