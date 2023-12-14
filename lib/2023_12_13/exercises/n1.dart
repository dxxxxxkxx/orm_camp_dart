import 'dart:io';

void main() async {
  final File inputFile = File('lib/2023_12_13/exercises/sample.csv');

  if (await inputFile.exists()) {
    // read file
    String text = '';
    try {
      text = await inputFile.readAsString();
    } catch (e) {
      print(e);
    }

    // replace text
    const String searchStr = '한석봉';
    if (text.contains(searchStr)) {
      text = text.replaceAll(searchStr, '김석봉');
    }

    // write file
    final File outputFile = File('lib/2023_12_13/exercises/sample_copy.csv');
    try {
      await outputFile.writeAsString(text);
    } catch (e) {
      print(e);
    }

    if (await outputFile.exists()) {
      print('Success');
    } else {
      print('Write-file not found');
    }
  } else {
    print('Read-file not found');
  }
}
