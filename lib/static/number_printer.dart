class NumberPrinter {
  int _id; // 식별자
  static int waitNumber = 1; // 선언과 동시에 초기화(값을 넣다)

  NumberPrinter(this._id);

  void printWaitNumber() {
    print("대기 순번 : $waitNumber");
    waitNumber++; // 증감연산자 사용하여 1씩 늘어나도록 한다.
  }
}

void main() {
  NumberPrinter numberPrinter1 = NumberPrinter(1);
  numberPrinter1.printWaitNumber();
  numberPrinter1.printWaitNumber();
  numberPrinter1.printWaitNumber();
  print("-----------------------");
  NumberPrinter numberPrinter2 = NumberPrinter(2);
  numberPrinter2.printWaitNumber();
  numberPrinter2.printWaitNumber();
}
