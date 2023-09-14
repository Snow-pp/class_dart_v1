import 'package:flutter_v1/test/student.dart';
import 'package:flutter_v1/test/subway.dart';

void main() {
  Subway line1 = Subway(1, 0, 0);
  Subway line2 = Subway(2, 0, 0);
  Student student1 = Student("제니", 10000);
  Student student2 = Student("소연", 5000);

  student1.takeSubway(line2);
  line2.showInfo();
  print("-----------------");
  student2.takeSubway(line2);
  line2.showInfo();
}