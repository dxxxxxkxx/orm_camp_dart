void main() {
  int m = 1;
  int n = 0;

  m %= 2;
  n %= 2;

  bool isChecked1 = (m == 0 && n == 1);
  bool isChecked2 = (m == 1 && n == 0);

  if (isChecked1 || isChecked2) {
    print('YES');
  } else {
    print('NO');
  }
}
