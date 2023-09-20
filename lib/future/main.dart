// await 키워드를 가지는 함수는 선언부에 async를 선언해 주어야한다.
void main() async {
  // 동기성 - 모든 코드가 순차적으로 진행되는 형태
  // 비동기성 - 코드가 동시 다발적으로 실행, 순차적으로 보장을 할 수 없는 상태

    print("tast 1 .....");
    var data1 = await fetchData(); // 기대값 : "2초 data" 문자열
    // 실제 출력 값 : Instance of 'Future<String>' (미래타입)
    print(data1.runtimeType);
    print("data1 : $data1");
    print("tast 2 .....");
    print("tast 3 .....");
}

Future<String> fetchData() {
  // 2초 뒤에 실행되는 코드를 작성
  // return Future.delayed(const Duration(seconds: 2), () {
  //   return "2초 data";
  // });

  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}