//Aufgabe 1
void main() {
  // Test 1
  int age = 15;
  bool hasParentalConsent = true;
  int movieAgeRating = 16;

  // Berechnung, ob der Film geschaut werden kann
  bool canWatchMovie = (age >= movieAgeRating) ||
      (hasParentalConsent && age >= movieAgeRating - 2);

  // Ausgabe mit ternärem Operator
  print(canWatchMovie ? "Filmfreigabe erteilt" : "Keine Freigabe");

  // Test 2
  age = 13;
  hasParentalConsent = false;
  movieAgeRating = 16;

  // Berechnung, ob der Film geschaut werden kann
  canWatchMovie = (age >= movieAgeRating) ||
      (hasParentalConsent && age >= movieAgeRating - 2);

  // Ausgabe mit ternärem Operator
  print(canWatchMovie ? "Filmfreigabe erteilt" : "Keine Freigabe");
}
