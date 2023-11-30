void main() {
  String pepero = '11111';
  final int requiredPepero = 11;

  if (pepero.length >= requiredPepero) {
    print('OK');
  } else {
    print(requiredPepero - pepero.length);
  }
}
