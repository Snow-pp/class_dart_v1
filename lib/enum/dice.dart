// 도전 과제 - 주사위 게임을 만들어 주세요
// 1. 단 주사위의 숫자는 열거형으로 설계 해주세요 (enum)
// 2. dart:math; 랜덤 변수 하나를 뽑아 주세요
// 3. switch 구문을 활용해서 패턴 매칭을 시켜 주세요 enum - 랜덤 숫자

import 'dart:math';

enum Dice { one, two, three, four, five, six }

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(6) + 1;
  print(randomNumber);

  switch(randomNumber) {
    case Dice.one:
      print("1 입니다.");
      break;
    case Dice.two:
      print("2 입니다.");
      break;
    case Dice.three:
      print("3 입니다.");
      break;
    case Dice.four:
      print("4 입니다.");
      break;
    case Dice.five:
      print("5 입니다.");
      break;
    case Dice.six:
      print("6 입니다.");
      break;
    default:
      print("알 수 없습니다.");
  }
}