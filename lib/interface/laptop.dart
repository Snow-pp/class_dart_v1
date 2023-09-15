// 일반 클래스를 사용한 방법
class Laptop {
  turnOn() { // void 생략 가능 ( void turnOn() )
    print("전원을 켭니다");
  }

  turnOff() {
    print("전원을 끕니다");
  }
}

class MacBook implements Laptop {
  @override
  turnOn() {
    print("맥북 전원을 켭니다");
  }

  @override
  turnOff() {
    print("맥북 전원을 끕니다");
  }
}

void main() {
  MacBook book = MacBook();
  book.turnOn();
  book.turnOff();
}