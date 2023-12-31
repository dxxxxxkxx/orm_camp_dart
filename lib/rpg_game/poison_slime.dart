import 'hero.dart';
import 'slime.dart';

class PoisonSlime extends Slime {
  int _poisonCnt;

  PoisonSlime({required super.suffix}) : _poisonCnt = 5;

  @override
  void attack(final Hero hero) {
    super.attack(hero);

    if (hero.hp > 0 && _poisonCnt > 0) {
      final int damage = hero.hp ~/ 5;
      print('독슬라임$suffix의 독 공격: 데미지 $damage');
      hero.hp -= damage;
      _poisonCnt--;
    }
  }
}
