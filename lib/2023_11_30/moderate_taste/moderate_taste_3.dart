import 'dart:io';

void main() {
  int sum = 0;

  String input = stdin.readLineSync()!.replaceAll(RegExp(r'\s'), '');
  List<String> exprs = input.split('+');

  for (int i = 0; i < exprs.length; i++) {
    int cntLessThan = exprs[i].split('').where((e) => e == '<').length;
    int cntSlash = exprs[i].split('').where((e) => e == '/').length;

    sum += (10 * cntLessThan + cntSlash);
  }

  print(sum);
}
