import 'package:orm_camp_dart/2023_12_18/exercises/n2.dart';
import 'package:test/test.dart';

void main() {
  test('Integer test', () {
    expect(isEven(num: 4), true);
    expect(isEven(num: 5), false);
    expect(isEven(num: -1), false);
    expect(isEven(num: 0), true);
  });
}
