void main() {
  int a = 2;
  int b = 4;

  // Tausche Werte, wenn a kleiner als b ist
  if (a < b) {
    int temporary = a;
    a = b;
    b = temporary;
  }

  // Prüfe auf "Pasch"
  if (a == b) {
    print('Pasch $a');

    // Spezielle Ausgabe für Mäxchen
  } else if (a == 2 && b == 1) {
    print('Mäxchen');

    // Standardfall: Ausgabe der beiden Zahlen
  } else {
    print('$a$b');
  }
}
