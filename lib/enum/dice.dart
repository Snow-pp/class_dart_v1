// 도전 과제 - 주사위 게임을 만들어 주세요
// 1. 단 주사위의 숫자는 열거형으로 설계 해주세요 (enum)
// 2. dart:math; 랜덤 변수 하나를 뽑아 주세요
// 3. switch 구문을 활용해서 패턴 매칭을 시켜 주세요 enum - 랜덤 숫자

import 'dart:math';

enum Dice { one, two, three, four, five, six }

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(6) + 1;

  switch(randomNumber) {
    case 1:
      print(Dice.one);
      break;
    case 2:
      print(Dice.two);
      break;
    case 3:
      print(Dice.three);
      break;
    case 4:
      print(Dice.four);
      break;
    case 5:
      print(Dice.five);
      break;
    case 6:
      print(Dice.six);
      break;
    default:
      print("알 수 없습니다.");
  }
}