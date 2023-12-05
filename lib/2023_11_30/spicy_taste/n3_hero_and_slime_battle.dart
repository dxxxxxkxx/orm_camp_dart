class Character {
  int health;
  final int attackValue;
  final int defenseValue;

  Character(this.health, this.attackValue, this.defenseValue);

  String showInfo() =>
      'Health: $health, Attack: $attackValue, Defense: $defenseValue';

  int attack(Character target) {
    int damage = attackValue - target.defenseValue;

    if (target.health < damage) {
      damage = target.health;
    }
    target.health -= damage;

    return damage;
  }

  bool isDead() => health <= 0 ? true : false;
}

class Hero extends Character {
  Hero(super.health, super.attackValue, super.defenseValue);

  @override
  String showInfo() => 'Hero - ${super.showInfo()}';
}

class Slime extends Character {
  Slime(super.health, super.attackValue, super.defenseValue);

  @override
  String showInfo() => 'Slime - ${super.showInfo()}';
}

class Game {
  final Hero hero = Hero(100, 10, 1);
  final Slime slime = Slime(10, 5, 5);

  void play() {
    while (true) {
      print(hero.showInfo());
      print(slime.showInfo());

      print('Slime attacked! Hero took ${slime.attack(hero)} damage.');
      if (hero.isDead()) {
        print('\nHero is defeated! Slime wins!');
        break;
      }

      print('Hero attacked! Slime took ${hero.attack(slime)} damage.');
      if (slime.isDead()) {
        print('\nSlime lost! Hero won!');
        break;
      }

      print('');
    }
  }
}

void main() {
  final Game game = Game();

  print('Hero vs. Slime\n');
  game.play();
}
