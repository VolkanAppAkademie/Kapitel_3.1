void main() {
  int a = 1;
  int b = 2;

  if (a < b) {
    int temporary = a;
    a = b;
    b = temporary;
  }

  if (a == b) {
    print('Pasch $a');
  } else if (a == 2 && b == 1) {
    print('Mäxchen');
  } else {
    print('$a$b');
  }
}
