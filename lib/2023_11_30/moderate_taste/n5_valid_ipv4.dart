import 'dart:io';

void main() {
  final int m = int.parse(stdin.readLineSync()!);
  final List<String> ipv4List = [];

  for (int i = 0; i < m; i++) {
    ipv4List.add(stdin.readLineSync() ?? '');
  }

  for (final String ipv4 in ipv4List) {
    print(isValidIpv4(ipv4) ? 'True' : 'False');
  }
}

bool isValidIpv4(final String input) {
  /*
  * [0-1]?[0-9]{1,2} → 0 ~ 199
  * 2[0-4][0-9] → 200 ~ 249
  * 25[0-5] → 250 ~ 255
  */
  final RegExp regExp = RegExp(
      r'^((([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))\.){3}([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5])$');

  return regExp.hasMatch(input);
}
