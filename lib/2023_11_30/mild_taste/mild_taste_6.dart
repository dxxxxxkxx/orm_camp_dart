import 'dart:io';

void main() {
  String input = stdin.readLineSync() ?? '';

  if ((int.tryParse(input)) != null) {
    int i = 1;

    while (i < input.length) {
      if (input[i - 1] != input[i]) {
        print('No');
        break;
      }

      i++;
    }

    // 각 숫자가 같을 경우
    if (i == input.length) {
      print(input);
    }
  } else {
    print('Not an integer');
  }
}
