// 상속을 하지 말아야 하는 경우
// 아래와 같은 경우에는 포함 관계(composition)가 적절하다.
class Engine {
  String? name;
  int? price;
}

class Car {
  Engine? engine; // Car가 Engine을 포함
  String? name;
  int? price;
}