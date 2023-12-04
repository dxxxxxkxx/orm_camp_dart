import 'dart:io';

void main() {
  String input;

  input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  final List<int> whn = input.split(' ').map((e) => int.parse(e)).toList();
  final int w = whn[0]; // width
  final int h = whn[1]; // height
  final int n = whn[2]; // n번 이동

  input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  final List<int> xy = input.split(' ').map((e) => int.parse(e)).toList();

  // 초기 위치 (x, y)
  int x = xy[0];
  int y = xy[1];

  for (int i = 0; i < n; i++) {
    input = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
    final List<String> log = input.split(' '); // 이동 로그
    final String direction = log[0];
    final int distance = int.parse(log[1]);

    switch (direction) {
      case 'U': // up
        if ((y += distance) >= h) {
          y -= h;
        }
        break;
      case 'D': // down
        if ((y -= distance) < 0) {
          y += h;
        }
        break;
      case 'L': // left
        if ((x -= distance) < 0) {
          x += w;
        }
        break;
      case 'R': // right
        if ((x += distance) >= w) {
          x -= w;
        }
        break;
    }
  }

  print('$x $y');
}
