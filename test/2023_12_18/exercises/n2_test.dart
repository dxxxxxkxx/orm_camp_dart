import 'package:orm_camp_dart/2023_12_18/exercises/n2.dart';
import 'package:test/test.dart';

void main() {
  test('Positive integer test', () {
    expect(isEven(num: 4), true);
    expect(isEven(num: 5), false);
  });

  test('Negative integer test', () {
    expect(isEven(num: -4), true);
    expect(isEven(num: -1), false);
  });

  test('0 test', () {
    expect(isEven(num: 0), true);
  });
}
