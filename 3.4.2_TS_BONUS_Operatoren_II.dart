// für das Runden auf volle 10 Cent

void main() {
  // Test 1: Kleine Standardbestellung
  double orderValue = 18.50; // Bestellwert in Euro
  double distance = 4.2; // Entfernung in km
  bool rushHour = false; // Keine Hauptverkehrszeit
  bool isRaining = false; // Kein Regen
  int orderSize = 2; // 2 Artikel

  // Berechnung der Lieferkosten
  double deliveryCost = calculateDeliveryCost(
      orderValue, distance, rushHour, isRaining, orderSize);

  // Ausgabe der Lieferkategorie
  print(deliveryCost < 5
      ? "Günstige Lieferung"
      : (deliveryCost >= 5 && deliveryCost <= 10)
          ? "Standardlieferung"
          : "Premium-Lieferung");

  // Test 2: Große Regenbestellung
  orderValue = 55.90;
  distance = 8.8;
  rushHour = true; // Hauptverkehrszeit
  isRaining = true; // Regen
  orderSize = 6; // 6 Artikel

  deliveryCost = calculateDeliveryCost(
      orderValue, distance, rushHour, isRaining, orderSize);
  print(deliveryCost < 5
      ? "Günstige Lieferung"
      : (deliveryCost >= 5 && deliveryCost <= 10)
          ? "Standardlieferung"
          : "Premium-Lieferung");

  // Test 3: Kleine Entfernungsbestellung
  orderValue = 12.40;
  distance = 11.2;
  rushHour = false; // Keine Hauptverkehrszeit
  isRaining = false; // Kein Regen
  orderSize = 1; // 1 Artikel

  deliveryCost = calculateDeliveryCost(
      orderValue, distance, rushHour, isRaining, orderSize);
  print(deliveryCost < 5
      ? "Günstige Lieferung"
      : (deliveryCost >= 5 && deliveryCost <= 10)
          ? "Standardlieferung"
          : "Premium-Lieferung");
}

// Funktion zur Berechnung der Lieferkosten
double calculateDeliveryCost(double orderValue, double distance, bool rushHour,
    bool isRaining, int orderSize) {
  double baseFee = 0.0;
  double distanceSurcharge = 0.0;
  double weatherSurcharge = 0.0;
  double rushHourSurcharge = 0.0;
  double quantityDiscount = 0.0;
  double minOrderSurcharge = 0.0;

  // Grundgebühr basierend auf der Entfernung
  if (distance <= 5) {
    baseFee = 2.50;
  } else if (distance <= 10) {
    baseFee = 3.50;
  } else {
    baseFee = 5.00;
  }

  // Distanzzuschlag ab dem 5. Kilometer
  if (distance > 5) {
    distanceSurcharge = (distance - 5).ceil() * 0.30;
  }

  // Wetterzuschlag bei Regen
  if (isRaining) {
    weatherSurcharge = 1.50;
  }

  // Zuschlag bei Hauptverkehrszeit
  if (rushHour) {
    rushHourSurcharge = 2.00;
  }

  // Mengenrabatt
  if (orderSize >= 8) {
    quantityDiscount = 2.00;
  } else if (orderSize >= 5) {
    quantityDiscount = 1.00;
  } else if (orderSize >= 3) {
    quantityDiscount = 0.50;
  }

  // Mindermengenzuschlag für Bestellungen unter 15,00€
  if (orderValue < 15.00) {
    minOrderSurcharge = 5.00;
  }

  // Gesamtkosten vor der Maximalkosten-Regel
  double totalCost = baseFee +
      distanceSurcharge +
      weatherSurcharge +
      rushHourSurcharge -
      quantityDiscount +
      minOrderSurcharge;

  // Maximalkosten-Regel: Lieferkosten dürfen nie mehr als 40% des Bestellwerts betragen
  double maxAllowedCost = orderValue * 0.40;

  if (totalCost > maxAllowedCost) {
    totalCost = maxAllowedCost;
  }

  // Aufrunden auf volle 10 Cent
  totalCost = (totalCost * 10).ceil() / 10;

  return totalCost;
}
