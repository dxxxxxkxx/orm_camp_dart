import 'hero.dart';
import 'validator.dart';

class Slime {
  String suffix;
  int _hp;

  Slime({required this.suffix}) : _hp = setHp(50);

  void attack(final Hero hero) {
    print('슬라임$suffix 공격: 데미지 10');

    if ((hero.hp -= 10) < 0) {
      hero.hp = 0;
    }
  }

  int get hp => _hp;

  set hp(final int hp) {
    _hp = setHp(hp);
  }
}
