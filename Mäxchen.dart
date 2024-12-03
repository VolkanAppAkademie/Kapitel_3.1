void main() {
  int a = 2;
  int b = 6;

  if (a < b) {
    int temporary = a;
    a = b;
    b = temporary;
  }

  if (a == b) {
    print('Pasch $a');
  } else if ((a == 2 && b == 1) || (a == 1 && b == 2)) {
    print('Mäxchen');
  } else {
    print('$a $b');
  }
}
