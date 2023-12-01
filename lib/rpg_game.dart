import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    if (mp >= 5 && hp < maxHp) {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int sec) {
    int recoveredMp = 0;

    if (mp < maxMp && sec > 0) {
      recoveredMp = sec + Random().nextInt(3);

      int totalMp = mp + recoveredMp;
      if (totalMp > maxMp) {
        recoveredMp = totalMp - maxMp;
      }
    }

    return recoveredMp;
  }
}

void main() {}
