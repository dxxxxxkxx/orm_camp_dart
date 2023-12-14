import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage({required final String path}) async {
  return await http.readBytes(Uri.parse(path));
}

Future<File> saveFile({
  required Uint8List bytes,
  required String fileName,
}) async {
  final File file = File('lib/2023_12_14/exercises/$fileName');
  return await file.writeAsBytes(bytes);
}

void main() async {
  final Uint8List imageBytes =
      await downloadImage(path: 'https://alimipro.com/favicon.ico');
  final File outputFile =
      await saveFile(bytes: imageBytes, fileName: 'icon.ico');

  if (await outputFile.exists()) {
    print('Success');
  } else {
    print('Failure');
  }
}
