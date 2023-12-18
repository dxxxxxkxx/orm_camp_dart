import 'package:orm_camp_dart/2023_12_18/exercises/n2.dart';
import 'package:test/test.dart';

void main() {
  test('Even positive integer test', () {
    expect(isEven(num: 4), true);
  });

  test('Even negative integer test', () {
    expect(isEven(num: -4), true);
  });

  test('Odd positive integer test', () {
    expect(isEven(num: 5), false);
  });

  test('Odd negative integer test', () {
    expect(isEven(num: -1), false);
  });

  test('0 test', () {
    expect(isEven(num: 0), true);
  });
}
