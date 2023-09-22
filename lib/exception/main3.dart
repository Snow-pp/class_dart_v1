// 예외 던지기
void main() {
  // 1 단계
  try {
    // 예외 발생
    throw Exception("Unknown Error");
  } catch(e, s) {
    print("예외 발생 : $e");
  }
  print(" end of code ");

  // 2단계
  try {
    throw TypeError();
  } on TypeError {
    print("type Error 에러 처리");
  } catch(e, s) {
    print("모든 예외 처리 : $e");
  }
}