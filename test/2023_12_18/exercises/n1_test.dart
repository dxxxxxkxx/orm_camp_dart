import 'package:orm_camp_dart/2023_12_18/exercises/n1.dart';
import 'package:test/test.dart';

void main() {
  test('Constructor test', () {
    const Bank bank =
        Bank(name: '홍길동', address: '서울시 어쩌구 저쩌구', phoneNumStr: '010-1111-2222');

    expect(bank.name, '홍길동');
    expect(bank.address, '서울시 어쩌구 저쩌구');
    expect(bank.phoneNumStr, '010-1111-2222');
  });

  test('fromJson test', () {
    const Map<String, dynamic> json = {
      'name': 'Eddy',
      'address': '미국',
      'phoneNumStr': '82-000-0000-0000'
    };
    final Bank bank = Bank.fromJson(json);

    expect(bank.name, 'Eddy');
    expect(bank.address, '미국');
    expect(bank.phoneNumStr, '82-000-0000-0000');
  });

  test('toJson test', () {
    const Bank bank =
        Bank(name: '뽀짝 북극곰', address: '북극 어디', phoneNumStr: '012-345-6789');
    Map<String, dynamic> json = bank.toJson();

    expect(json['name'], '뽀짝 북극곰');
    expect(json['address'], '북극 어디');
    expect(json['phoneNumStr'], '012-345-6789');
  });
}
