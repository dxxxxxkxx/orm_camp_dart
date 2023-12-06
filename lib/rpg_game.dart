import 'dart:math';

class Wand {}

class Wizard {}

class Cleric {
  String name;
  int hp;
  int mp;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  void selfAid() {
    if (mp >= 5 && hp < Cleric.maxHp) {
      mp -= 5;
      hp = Cleric.maxHp;
    }
  }

  int pray(int sec) {
    int recovMp = 0;

    if (mp < Cleric.maxMp && sec > 0) {
      recovMp = sec + Random().nextInt(3);

      if ((recovMp += mp) > Cleric.maxMp) {
        recovMp -= Cleric.maxMp;
      }
    }

    return recovMp;
  }
}

void main() {}
