class Animal {
  // 속성 만들어 주세요
  String? type;
  String? color;
  int? age;
  String? howl;

  // 기능 만들어 주세요
  void howlling(String sound) {
    howl = sound;
  }

  void showInfo() {
    print('Type : $type');
    print('color : $color');
    print('age : $age');
    print('howling : $howl');
  }
}

void main() {
  // 실행 및 테스트
  Animal animal = Animal();
  animal.type = "개";
  animal.color = "흰색";
  animal.age = 5;
  animal.howl = "멍멍";
  animal.showInfo();
}