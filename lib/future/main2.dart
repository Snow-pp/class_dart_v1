void main() async {
  // Future (미래 타입)을 선언해보자.
  Future<String> name = Future.value("텐코딩");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("--------------------");

  // Future 타입을 소화 시키는 방법
  // 방법 1 - 코드를 동기적으로 처리하는 방법
  print(await name);
  print(await number);
  print(await isTrue);
}
