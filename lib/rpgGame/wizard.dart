import 'validator.dart';
import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? wand;

  Wizard({
    required final String name,
    required final int hp,
    required final int mp,
    this.wand,
  })  : _name = name,
        _hp = setHp(hp),
        _mp = mp {
    validateName(_name);
    validateMp(_mp);
  }

  String get name => _name;

  set name(final String name) {
    validateName(name);
    _name = name;
  }

  int get hp => _hp;

  set hp(final int hp) {
    _hp = setHp(hp);
  }

  int get mp => _mp;

  set mp(final int mp) {
    validateMp(mp);
    _mp = mp;
  }
}
