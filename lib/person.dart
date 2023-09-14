void main() {

  // Person personKim = new Person();
  Person personKim = Person(); // new 키워드 생략 가능
  personKim.myName = "홍길동";
  personKim.phone = "010-1234-1234";
  personKim.age = 20;
  personKim.displayInfo();

}

// 클래스 설계하기
class Person {
  // dart 2.2 버전 이후부터 진행
  // Nullable 타입에 이해 (데이터 타입 뒤에 ?)
  // dart 이전 버전에서는 모든 변수가 null이 아닌 값으로 세팅되었다.
  // 명시적으로 null을 허용하는 여부를 표현할 수 있는 타입이 nullable 타입이다.
  // String != String? 다른 데이터 타입이다.
  String? myName;
  String? phone;
  int? age;

  void displayInfo() {
    print('Person name : $myName' );
    print('Phone number : $phone');
    print('Age : $age');
  }

} // end of Person