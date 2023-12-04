import 'dart:io';

void main() {
  final String input = stdin.readLineSync()!;

  // 정수가 양수이면 i는 1에서 시작
  // 정수가 음수이면 i는 2에서 시작
  int i = (input[0] != '-') ? 1 : 2;

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
}
