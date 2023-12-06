class Character {
  int health;
  final int attackValue;
  final int defenseValue;

  Character({
    required this.health,
    required this.attackValue,
    required this.defenseValue,
  });

  String showInfo() =>
      'Health: $health, Attack: $attackValue, Defense: $defenseValue';

  int attack(final Character target) {
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
  Hero({
    required super.health,
    required super.attackValue,
    required super.defenseValue,
  });

  @override
  String showInfo() => 'Hero - ${super.showInfo()}';
}

class Slime extends Character {
  Slime({
    required super.health,
    required super.attackValue,
    required super.defenseValue,
  });

  @override
  String showInfo() => 'Slime - ${super.showInfo()}';
}

class Game {
  final Hero hero = Hero(health: 100, attackValue: 10, defenseValue: 1);
  final Slime slime = Slime(health: 10, attackValue: 5, defenseValue: 5);

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

      print(''); // enter
    }
  }
}

void main() {
  final Game game = Game();

  print('Hero vs. Slime\n');
  game.play();
}
