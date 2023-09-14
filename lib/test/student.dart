import 'package:flutter_v1/test/subway.dart';

class Student {
  String name;
  int money;

  Student(this.name, this.money);

  // 학생이 버스를 탄다.
  // 학생이 지하철을 탄다.
  void takeSubway(Subway takeSubway) {
    takeSubway.take(1300);
    this.money -= 1300;
    
  }
}