import 'dart:io';
import 'dart:math';

void main() {
  final List<String> result = [];

  final String input =
      stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  final List<int> abr = input.split(' ').map((e) => int.parse(e)).toList();

  // 공사 현장 위치 (a, b)
  final int a = abr[0];
  final int b = abr[1];

  final int r = abr[2]; // 공사 현장 위치와 나무 그늘 위치 사이의 거리
  final int n = int.parse(stdin.readLineSync()!); // 나무 그눌 수

  for (int i = 0; i < n; i++) {
    final String input =
        stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
    final List<int> xy = input.split(' ').map((e) => int.parse(e)).toList();

    // 나무 그늘 위치 (x, y)
    final int x = xy[0];
    final int y = xy[1];

    // (x, y)와 (a, b) 사이의 거리 >= r
    if (pow(x - a, 2) + pow(y - b, 2) >= pow(r, 2)) {
      result.add('silent');
    } else {
      result.add('noisy');
    }
  }

  result.forEach(print);
}
