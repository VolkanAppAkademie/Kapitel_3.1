abstract class Tier {
  void lautGeben();
  void bewegen();

  void atmen() {
    print("Das Tier atmet.");
  }
}

class Hund extends Tier {
  String name;
  String rasse;

  Hund(this.name, this.rasse);

  @override
  void lautGeben() {
    print("$name sagt: Wuff!");
  }

  @override
  void bewegen() {
    print("$name läuft.");
  }
}

class Katze extends Tier {
  String name;
  String fellfarbe;

  Katze(this.name, this.fellfarbe);

  @override
  void lautGeben() {
    print("$name sagt: Miau!");
  }

  @override
  void bewegen() {
    print("$name schleicht.");
  }
}

void main() {
  Hund hund = Hund("Bello", "Labrador");
  Katze katze = Katze("Miezi", "Schwarz");

  hund.lautGeben();
  hund.bewegen();
  hund.atmen();

  katze.lautGeben();
  katze.bewegen();
  katze.atmen();
}
