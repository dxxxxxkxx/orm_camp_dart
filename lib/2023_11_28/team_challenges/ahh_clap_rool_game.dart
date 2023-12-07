class Player {
  final String name;
  int cntClap;

  Player({required this.name, this.cntClap = 0});
}

class Game {
  // Ahh: 30의 배수 (우선 순위 1)
  // Clap: 3의 배수 (우선 순위 2)
  // Rool: 10의 배수 (우선 순위 3)

  int cntAhh = 0;
  int cntClap = 0;
  int cntRool = 0;

  // 30의 배수 확인
  bool checkAhh(final int n) => (n % 30 == 0) ? true : false;

  // 3의 배수 확인
  bool checkClap(final int n) => (n % 3 == 0) ? true : false;

  // 10의 배수 확인
  bool checkRool(final int n) => (n % 10 == 0) ? true : false;

  String play(final int n, {required final Player player}) {
    if (checkAhh(n)) {
      // 우선 순위 1
      cntAhh++;
      return 'Ahh';
    } else if (checkClap(n)) {
      // 우선 순위 2
      player.cntClap++;
      cntClap++;
      return 'Clap';
    } else if (checkRool(n)) {
      // 우선 순위 3
      cntRool++;
      return 'Rool';
    } else {
      return '$n';
    }
  }
}

void main() {
  final List<Player> players = [
    Player(name: 'Player 1'),
    Player(name: 'Player 2'),
    Player(name: 'Player 3'),
    Player(name: 'Player 4')
  ];

  final Game ahhClapRool = Game();

  // 게임 시작 (1 ~ 100)
  for (int i = 1; i <= 100; i++) {
    final Player currentPlayer = players[(i - 1) % players.length];

    // output 출력
    print(
        '${currentPlayer.name}: ${ahhClapRool.play(i, player: currentPlayer)}');
  }
  // 게임 끝

  print('\n* 총 갯수');
  print('Ahh: ${ahhClapRool.cntAhh}');
  print('Clap: ${ahhClapRool.cntClap}');
  print('Rool: ${ahhClapRool.cntRool}');

  print('\n* player의 clap 갯수');
  for (final Player player in players) {
    print('${player.name}: ${player.cntClap}');
  }

  final Player maxClapPlayer = players.reduce(
      (final Player prev, final Player next) =>
          prev.cntClap > next.cntClap ? prev : next);
  print('\n* 가장 많은 clap을 출력한 player: ${maxClapPlayer.name}');
}
