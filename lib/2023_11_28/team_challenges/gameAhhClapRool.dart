class Player {
  String name = '';
  int cntClap = 0;
}

class AhhClapRool {
  // Ahh: 30의 배수 (우선 순위 1)
  // Clap: 3의 배수 (우선 순위 2)
  // Rool: 10의 배수 (우선 순위 3)

  int cntAhh = 0;
  int cntClap = 0;
  int cntRool = 0;

  // 30의 배수 확인
  bool checkAhh(int x) {
    return x % 30 == 0 ? true : false;
  }

  // 3의 배수 확인
  bool checkClap(int x) {
    return x % 3 == 0 ? true : false;
  }

  // 10의 배수 확인
  bool checkRool(int x) {
    return x % 10 == 0 ? true : false;
  }

  String getOutput(int x, Player player) {
    if (checkAhh(x)) {
      // 우선 순위 1
      cntAhh++;
      return 'Ahh';
    } else if (checkClap(x)) {
      // 우선 순위 2
      player.cntClap++;
      cntClap++;
      return 'Clap';
    } else if (checkRool(x)) {
      // 우선 순위 3
      cntRool++;
      return 'Rool';
    } else {
      return x.toString();
    }
  }
}

void main() {
  Player player1 = Player();
  Player player2 = Player();
  Player player3 = Player();
  Player player4 = Player();

  player1.name = 'Player 1';
  player2.name = 'Player 2';
  player3.name = 'Player 3';
  player4.name = 'Player 4';

  List<Player> players = [player1, player2, player3, player4];
  AhhClapRool ahhClapRool = AhhClapRool();

  // 1 ~ 100
  for (int i = 1; i <= 100; i++) {
    Player currentPlayer = players[(i - 1) % players.length];

    // 현재 player 이름: output 출력
    print('${currentPlayer.name}: ${ahhClapRool.getOutput(i, currentPlayer)}');
  }

  print('\n* 총 갯수');
  print('Ahh: ${ahhClapRool.cntAhh}');
  print('Clap: ${ahhClapRool.cntClap}');
  print('Rool: ${ahhClapRool.cntRool}');

  print('\n* player의 clap 갯수');
  print('${player1.name}: ${player1.cntClap}');
  print('${player2.name}: ${player2.cntClap}');
  print('${player3.name}: ${player3.cntClap}');
  print('${player4.name}: ${player4.cntClap}');

  Player maxClapPlayer =
      players.reduce((a, b) => a.cntClap > b.cntClap ? a : b);

  print('\n* 가장 많은 clap을 출력한 player: ${maxClapPlayer.name}');
}
