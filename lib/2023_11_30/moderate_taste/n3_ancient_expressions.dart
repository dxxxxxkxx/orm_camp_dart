import 'dart:io';

void main() {
  int sum = 0;

  final String input = stdin.readLineSync()!.replaceAll(RegExp(r'\s'), '');
  final List<String> exprs = input.split('+');

  for (int i = 0; i < exprs.length; i++) {
    final int cntLessThan = exprs[i].split('').where((e) => e == '<').length;
    final int cntSlash = exprs[i].split('').where((e) => e == '/').length;

    sum += (10 * cntLessThan + cntSlash);
  }

  print(sum);
}
