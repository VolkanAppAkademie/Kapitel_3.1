void main() {
  // Wetterdaten für drei Tage
  double temp1 = 22.5, temp2 = 19.8, temp3 = 25.2;
  double regen1 = 0.0, regen2 = 12.5, regen3 = 0.5;
  int? wind1 = 15, wind2 = null, wind3 = 20;


 // Hier kommt dann dein Code für die Aufgabe.


  // Temperaturdifferenz zwischen höchstem und niedrigstem Wert berechnen
  double maxTemp = [temp1, temp2, temp3].reduce((a, b) => a > b ? a : b);
  double minTemp = [temp1, temp2, temp3].reduce((a, b) => a < b ? a : b);
  double tempDifferenz = maxTemp - minTemp;

  // Anzahl der Regentage (Niederschlag > 0) zählen
  int anzahlRegentage = 0;
  if (regen1 > 0) anzahlRegentage++;
  if (regen2 > 0) anzahlRegentage++;
  if (regen3 > 0) anzahlRegentage++;

  // Anzahl der Tage, an denen der Wind stärker als 10 km/h war (nur bei gemessenen Werten)
  int anzahlWindstark = 0;
  if (wind1 != null && wind1 > 10) anzahlWindstark++;
  if (wind2 != null && wind2 > 10) anzahlWindstark++;
  if (wind3 != null && wind3 > 10) anzahlWindstark++;

  // Ergebnisse ausgeben
  print('Temperaturdifferenz zwischen höchstem und niedrigstem Wert: ${tempDifferenz.toStringAsFixed(2)} °C');
  print('Anzahl der Regentage: $anzahlRegentage');
  print('Anzahl der Tage mit Wind über 10 km/h: $anzahlWindstark');
}


