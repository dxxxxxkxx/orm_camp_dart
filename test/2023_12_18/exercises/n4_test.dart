import 'package:orm_camp_dart/2023_12_18/exercises/n4.dart';
import 'package:test/test.dart';

void main() {
  test('String test', () {
    expect(reverseString(str: 'Hello'), 'olleH');
    expect(reverseString(str: 'x'), 'x');
    expect(reverseString(str: ''), '');
  });
}
