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
        _hp = hp,
        _mp = mp {
    _validateName(_name);
    _validateMp(_mp);
  }

  // getter & setter ----------

  String get name => _name;

  set name(final String name) {
    _validateName(name);
    _name = name;
  }

  int get hp => _hp;

  set hp(final int hp) {
    if (hp >= 0) {
      _hp = hp;
    } else {
      _hp = 0;
    }
  }

  int get mp => _mp;

  set mp(final int mp) {
    _validateMp(mp);
    _mp = mp;
  }

  // ---------- getter & setter

  void _validateName(final String name) {
    if (name.length < 3) {
      throw Exception('_name은 null일 수 없고 3글자 이상이어야 한다');
    }
  }

  void _validateMp(final int mp) {
    if (mp < 0) {
      throw Exception('_mp는 0 이상이어야 한다');
    }
  }
}
