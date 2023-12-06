import 'dart:io';

void main() {
  final String input =
      stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
  final List<int> hw = input.split(' ').map((e) => int.parse(e)).toList();

  final int h = hw[0]; // height
  final int w = hw[1]; // width

  final List<List<int>> image = List.generate(
      h,
      (final int index) =>
          List.generate(w, (final int index) => 0, growable: false),
      growable: false);

  for (int i = 0; i < h; i++) {
    final String input =
        stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
    image[i] = input.split(' ').map((e) => int.parse(e)).toList();

    for (int j = 0; j < w; j++) {
      if (image[i][j] >= 0 && image[i][j] < 128) {
        image[i][j] = 0;
      } else if (image[i][j] >= 128 && image[i][j] < 256) {
        image[i][j] = 1;
      }
    }
  }

  for (int i = 0; i < h; i++) {
    for (int j = 0; j < w - 1; j++) {
      stdout.write('${image[i][j]} ');
    }
    stdout.write('${image[i][w - 1]}\n');
  }
}
