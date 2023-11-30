class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp >= 5 && hp < maxHp) {
      mp -= 5;
      hp = maxHp;
    }
  }
}

void main() {}
