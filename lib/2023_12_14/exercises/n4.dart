import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage({required final String path}) async {
  Uint8List image;

  try {
    image = await http.readBytes(Uri.parse(path));
  } catch (e) {
    print(e);
    image = await File('assets/images/no_image.png').readAsBytes();
  }

  return image;
}

void main() async {
  final Stopwatch stopwatch = Stopwatch();

  // synchronous
  stopwatch.start();
  for (int i = 0; i < 3; i++) {
    await downloadImage(path: 'https://alimipro.com/favicon.ico');
  }
  print('[Synchronous] ${stopwatch.elapsed}');

  // asynchronous
  stopwatch.reset();
  stopwatch.start();
  for (int i = 0; i < 3; i++) {
    downloadImage(path: 'https://alimipro.com/favicon.ico');
  }
  print('[Asynchronous] ${stopwatch.elapsed}');
}
