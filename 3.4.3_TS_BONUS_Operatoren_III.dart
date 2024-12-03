void main() {
  // Drei Produktbewertungen als Maps erstellen
  var bewertung1 = {'rating': 4, 'comment': 'Sehr gutes Produkt'};
  var bewertung2 = {
    'rating': 5,
    'comment': null
  }; // Bewertung mit null Kommentar
  var bewertung3 = {
    'rating': null,
    'comment': 'Gut, aber teuer'
  }; // Bewertung mit null Bewertung

  // Die Bewertungen in eine Liste packen
  var bewertungen = [bewertung1, bewertung2, bewertung3];

  // Berechnung der durchschnittlichen Bewertung (null-Werte ignorieren)
  double gesamtbewertung = 0;
  int anzahlBewertungen = 0;

  for (var bewertung in bewertungen) {
    if (bewertung['rating'] != null) {
      gesamtbewertung += bewertung['rating'];
      anzahlBewertungen++;
    }
  }
  double durchschnitt =
      anzahlBewertungen > 0 ? gesamtbewertung / anzahlBewertungen : 0;

  // Berechnung der Anzahl der Bewertungen ohne Kommentar
  int anzahlOhneKommentar = 0;
  for (var bewertung in bewertungen) {
    if (bewertung['comment'] == null) {
      anzahlOhneKommentar++;
    }
  }

  // Berechnung der Anzahl der vollständigen Bewertungen (rating und comment nicht null)
  int anzahlVollstaendig = 0;
  for (var bewertung in bewertungen) {
    if (bewertung['rating'] != null && bewertung['comment'] != null) {
      anzahlVollstaendig++;
    }
  }

  // Ergebnisse ausgeben
  print('Durchschnittliche Bewertung: ${durchschnitt.toStringAsFixed(2)}');
  print('Anzahl der Bewertungen ohne Kommentar: $anzahlOhneKommentar');
  print('Anzahl der vollständigen Bewertungen: $anzahlVollstaendig');
}
