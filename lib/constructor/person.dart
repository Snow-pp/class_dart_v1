class Person {
  String? name;
  int? age;
  String? phone;

  // 기본 생성자 직접 작성
  Person(this.name, this.age);
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 명명된 생성자
  Person.fromBirthYear(String name, int birthYear) {
    this.name = name;
    // 나이를 변수에 계산해서 넣고 싶다
    // this.age = birthYear;
    this.age = DateTime.now().year - birthYear;
  }
}

void main() {
  // 기본 생성자를 통해 인스턴스 생성
  Person person1 = Person("홍길동", 30);
  var person2 = Person("이순신", 35);
  print(person1.runtimeType); // runtimeType :
  print(person2.runtimeType);

  //명명된 생성자를 통해 인스턴스 생성
  var person3 = Person.fromBirthYear("야스오", 1995);
  print(person3);
  print(person3.age);
}