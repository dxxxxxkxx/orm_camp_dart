import 'package:orm_camp_dart/2023_12_18/exercises/n3.dart';
import 'package:test/test.dart';

void main() {
  test('Integer list test', () {
    expect(findMax(intList: [2, 5, 1, 9, 3]), 9);
    expect(findMax(intList: [0, -5, -1, -2, 0]), 0);
    expect(findMax(intList: [10]), 10);
  });

  test('Empty list test', () {
    expect(findMax(intList: []), null);
  });
}
