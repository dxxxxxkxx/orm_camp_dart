void main() {
  const String pepero = '11111';
  const int requiredPepero = 11;

  if (pepero.length >= requiredPepero) {
    print('OK');
  } else {
    print(requiredPepero - pepero.length);
  }
}
