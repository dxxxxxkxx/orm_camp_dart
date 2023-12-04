import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  List<int> abcd = input.split(' ').map((e) => int.parse(e)).toList();

  abcd.sort((prev, next) => next.compareTo(prev));

  print(10 * (abcd[0] + abcd[1]) + (abcd[2] + abcd[3]));
}
