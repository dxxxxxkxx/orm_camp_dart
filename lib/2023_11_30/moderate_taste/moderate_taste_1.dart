import 'dart:io';
import 'dart:math';

void main() {
  // 공사 현장 위치 (a, b)
  int a = 0;
  int b = 0;

  int r = 0; // 공사 현장 위치와 나무 그늘 위치 사이의 거리
  int n = 0; // 나무 그눌 수

  List<String> result = [];

  String input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  List<int> abr = input.split(' ').map((e) => int.parse(e)).toList();
  a = abr[0];
  b = abr[1];
  r = abr[2];

  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    String input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
    List<int> xy = input.split(' ').map((e) => int.parse(e)).toList();

    // 나무 그늘 위치 (x, y)
    int x = xy[0];
    int y = xy[1];

    // (x, y)와 (a, b) 사이의 거리 >= r
    if (pow(x - a, 2) + pow(y - b, 2) >= pow(r, 2)) {
      result.add('silent');
    } else {
      result.add('noisy');
    }
  }

  result.forEach(print);
}
