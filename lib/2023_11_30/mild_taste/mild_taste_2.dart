void main() {
  int m = 30;
  int n = 15;

  m %= 2;
  n %= 2;

  /*
   Caution: Dart supports short-circuit evaluation (lazy evaluation).
   ex) if ((m == 0 && n == 1) || (m == 0 && n == 0)) {}
       (m == 0 && n == 0) is not executed.
   */

  bool isChecked1 = false;
  bool isChecked2 = false;

  isChecked1 = (m == 0 && n == 1);
  isChecked2 = (m == 1 && n == 0);

  if (isChecked1) {
    if (!isChecked2) {
      print('YES');
    } else {
      print('NO');
    }
  } else if (!isChecked1) {
    if (isChecked2) {
      print('YES');
    } else {
      print('NO');
    }
  }
}
