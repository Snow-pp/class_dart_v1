void main() async {
  // Future (미래 타입)을 선언해보자.
  Future<String> name = Future.value("텐코딩");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("--------------------");

  // Future 타입을 소화 시키는 두번째 방법
  // 방법 2 - 콜백 메서드 활용 Future.then(); 함수를 사용할 수 있다.
  name.then((v) => print("Future type에서 값 꺼내기 : $v"));
  number.then((v) => print("값 확인 : $v"));
  isTrue.then((v) => print("값 확인 : $v"));
  print("--------------------");
}