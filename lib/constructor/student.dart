class Student {
  String name;
  int age;
  int rollNumber;

  // 1단계
  // Student(String name, int age, int rollNumber) {
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }

  // 2단계
  // 단일 라인 생성자 - 짧은 형식
  Student(this.name, this.age, this.rollNumber);
}