import 'package:flutter_v1/bicycle.dart';

void main() {
  // 생성자는 인스턴스화될 때 가장 먼저 실행되는 영역이다.
  // 자바와 마찬가지로 기본 생성자는 dart 컴파일러가 알아서 넣어준다.
  Bicycle bicycle = Bicycle();
  bicycle.color = "Red";
  bicycle.size = 10;
  bicycle.currentSpeed = 10;
  bicycle.showInfo();
}