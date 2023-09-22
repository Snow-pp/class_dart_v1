void main() {
  Exception exception;
  Error error;
  try {
    int result = 10 ~/ 0;
    print("result $result");
  } catch (error, stackTrace) { // stackTrace 에러가 난 위치를 알려준다.
    // 예외 처리 코드
    print("An error : $error");
    print("A stackTrace : $stackTrace");
  } finally {
    // 예외 발생 여부와 상관없이 항상 실행되는 코드
    print("반드시 실행되는 블록");
  }
}