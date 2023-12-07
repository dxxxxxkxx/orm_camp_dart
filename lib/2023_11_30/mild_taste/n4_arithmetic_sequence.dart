void main() {
  const int firstTerm = 5;
  const int commDiff = 10;
  const int num = 10;

  final List<int> arithSeq =
      List.generate(num, (final int index) => 0, growable: false);
  arithSeq[0] = firstTerm;

  for (int i = 1; i < num; i++) {
    arithSeq[i] = arithSeq[i - 1] + commDiff;
  }

  print(arithSeq.join(' ').trimRight());
}
