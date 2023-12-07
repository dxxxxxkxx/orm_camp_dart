import 'hero.dart';
import 'slime.dart';

class PoisonSlime extends Slime {
  int poisonCnt;

  PoisonSlime({required super.suffix}) : poisonCnt = 5;

  @override
  void attack(final Hero hero) {
    super.attack(hero);

    if (hero.hp > 0 && poisonCnt > 0) {
      final int damage = (hero.hp * 0.2).toInt();
      print('독슬라임$suffix의 독 공격: 데미지 $damage');
      hero.hp -= damage;
      poisonCnt--;
    }
  }
}
