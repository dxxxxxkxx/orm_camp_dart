import 'dart:io';

void main() async {
  final File inputFile = File('lib/2023_12_13/exercises/sample.csv');
  final File outputFile = File('lib/2023_12_13/exercises/sample_copy.csv');

  String text = await inputFile
      .readAsString()
      .catchError((e) => throw Exception('Reading file error'));
  const String srchStr = '한석봉';

  if (text.contains(srchStr)) {
    text = text.replaceAll(srchStr, '김석봉');
  }

  await outputFile
      .writeAsString(text)
      .catchError((e) => throw Exception('Writing file error'));
}
