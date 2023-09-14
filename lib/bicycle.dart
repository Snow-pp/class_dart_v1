class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  Bicycle() {
    print("기본 생성자 호출이 될까요?");
  }

  // 기능(메소드) - 동사로 시작을 권장
  void changeGear(int gear) {
    currentSpeed = gear;
  }

  void showInfo() {
    print("color : $color");
    print("Size : $size");
    print("currentSpeed : $currentSpeed");
  }
}