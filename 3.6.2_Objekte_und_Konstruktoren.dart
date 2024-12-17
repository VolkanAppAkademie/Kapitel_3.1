class Rechteck {
  double x;
  double y;
  String farbe;

  Rechteck(this.x, this.y, this.farbe);

  double berechneUmfang() {
    return 2 * (x + y);
  }

  double berechneFlaeche() {
    return x * y;
  }
}

void main() {
  Rechteck meinRechteck = Rechteck(5.0, 10.0, 'blau');

  print('Umfang des Rechtecks: ${meinRechteck.berechneUmfang()}');
  print('Fläche des Rechtecks: ${meinRechteck.berechneFlaeche()}');
  print('Farbe des Rechtecks: ${meinRechteck.farbe}');
}
