void main() {
  // Test 1
  double totalAmount = 150;
  bool isStudent = true;
  bool hasVoucher = false;
  bool isLoyalCustomer = false;

  // Berechnung des maximalen Rabatts
  double discount = 0;

  // Rabatt für Studenten
  if (isStudent) {
    discount = 5;
  }

  // Rabatt für Stammkunden
  if (isLoyalCustomer) {
    discount = discount < 10 ? 10 : discount;
  }

  // Rabatt durch Gutschein
  if (hasVoucher) {
    discount = discount < 15 ? 15 : discount;
  }

  // Extra-Rabatt für Bestellungen über 200€
  if (totalAmount > 200) {
    discount += 5; // 5% Extra-Rabatt
  }

  // Ausgabe des Rabatts und der entsprechenden Nachricht
  print(discount > 15
      ? "Super Spar-Deal!"
      : discount > 0
          ? "Normaler Rabatt"
          : "Standardpreis");

  // Test 2
  totalAmount = 250;
  isStudent = false;
  hasVoucher = true;
  isLoyalCustomer = true; // Berechnung des maximalen Rabatts
  discount = 0;

  // Rabatt für Studenten
  if (isStudent) {
    discount = 5;
  }

  // Rabatt für Stammkunden
  if (isLoyalCustomer) {
    discount = discount < 10 ? 10 : discount;
  }

  // Rabatt durch Gutschein
  if (hasVoucher) {
    discount = discount < 15 ? 15 : discount;
  }

  // Extra-Rabatt für Bestellungen über 200€
  if (totalAmount > 200) {
    discount += 5; // 5% Extra-Rabatt
  }

  // Ausgabe des Rabatts und der entsprechenden Nachricht
  print(discount > 15
      ? "Super Spar-Deal!"
      : discount > 0
          ? "Normaler Rabatt"
          : "Standardpreis");
}
