class Person {
  String? name;
  int? age;

  void display() {
    print("name: $name");
    print("age: $age");
  }
}

class Student extends Person {
  // 부모에 있는 속성과 메서드를 물려 받는다.
  String? schoolName;
  String? schoolAddress;

  // @override // 생략해도 프로그램이 인식한다.
  void display() {
    print("name: $name");
    print("age: $age");
    print("schoolName: $schoolName");
    print("schoolAddress: $schoolAddress");
  }
}

void main() {
  Student student = Student();
  student.name = "홍길동";
  student.age = 30;
  student.schoolName = "그린대";
  student.schoolAddress = "부산시 진구";
  student.display();
}