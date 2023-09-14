class Employee {
  // static : 객체들이 공유할 수 있는 메모리 공간이다.
  // 하지만 static은 해당 객체의 속성 값을 나타내는 것은 아니다.
  // static 변수, 멤버 변수
  String? name;
  static int nextEmployeeNumber = 1000;
  int employeeNumber = 0;

  // Employee(this.name);

  Employee(String name) {
    this.name = name;
    employeeNumber = nextEmployeeNumber;
    nextEmployeeNumber++;
  }

  // 함수는 독립적인 일련의 코드의 묶음이다.
  // 메서드는 멤버 변수를 활용해서 기능을 구현한다.
  void display() {
    print("이름 : $name");
    print("사원 번호 : $employeeNumber");
  }
}

void main() {
  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언하시오
  // 단, Employee 인스턴스화 되면(객체화) 사원 번호는 자동으로 1씩 증가할 수 있도록 만드세요
  Employee employee1 = Employee("홍길동"); // 사원번호 1
  Employee employee2 = Employee("홍길순"); // 사원번호 2
  Employee employee3 = Employee("홍길"); // 사원번호 3
  employee1.display();
  employee2.display();
  employee3.display();
}