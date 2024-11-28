void main() {
  String kinokasse(int ticketnummer) {
    // Anzahl der Sitzplätze pro Reihe
    int plaetzeProReihe = 12;

    // Berechnung der Reihe und Platznummer innerhalb der Reihe
    int reihe = (ticketnummer - 1) ~/ plaetzeProReihe + 1;
    int platzInReihe = (ticketnummer - 1) % plaetzeProReihe + 1;

    // Berechnung des Ticketpreises
    int preis = (platzInReihe % 2 == 0) ? 15 : 12;

    // Formatierte Ausgabe
    return '''TICKET-INFO
Reihe: $reihe
Platz: $platzInReihe
Preis: $preis€''';
  }

  // Beispiel: Ticketnummer 47
  int ticketnummer = 47;
  print(kinokasse(ticketnummer));
}
