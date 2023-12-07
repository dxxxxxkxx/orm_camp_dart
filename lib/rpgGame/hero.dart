import 'validator.dart';

class Hero {
  String _name;
  int _hp;

  Hero({required final String name, required final int hp})
      : _name = name,
        _hp = setHp(hp) {
    validateName(name);
  }

  int get hp => _hp;

  set hp(final int hp) {
    _hp = setHp(hp);
  }

  String get name => _name;

  set name(final String name) {
    validateName(name);
    _name = name;
  }
}
