import 'dart:io';

void main() {
  // 공사 현장 위치 (a, b)
  int a = 0;
  int b = 0;

  // 나무 그물 위치 (x, y)
  int x = 0;
  int y = 0;

  int r = 0; // (a, b)와 (x, y) 사이의 거리
  int n = 0; // 나무 그눌 수

  String input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  List<int> abr = input.split(' ').map((e) => int.parse(e)).toList();
  a = abr[0];
  b = abr[1];
  r = abr[2];

  n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    for (int i = 0; i < n; i++) {}
  }
}
