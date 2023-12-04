import 'dart:io';

void main() {
  int firstTerm = 5;
  int commDiff = 10;
  int num = 10;

  List<int> arithSeq = List.generate(num, (index) => 0);
  arithSeq[0] = firstTerm;

  for (int i = 1; i < num; i++) {
    arithSeq[i] = arithSeq[i - 1] + commDiff;
  }

  for (int i = 0; i < num - 1; i++) {
    stdout.write('${arithSeq[i]} ');
  }

  stdout.write('${arithSeq[num - 1]}');
}
