import 'hero.dart';

class Slime {
  final String suffix;
  int hp;

  Slime({required this.suffix}) : hp = 50;

  void attack(final Hero hero) {
    print('슬라임$suffix의 공격: 데미지 10');

    if ((hero.hp -= 10) < 0) {
      hero.hp = 0;
    }
  }
}
