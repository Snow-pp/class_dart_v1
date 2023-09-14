class Subway {
  int lineNumber;
  int count; // 승객 수
  int money;
  // List<Student> st;

  Subway(this.lineNumber, this.count, this.money);

  // 승객을 태우다
  void take(int money) {
    this.money += money;
    this.count++;
  }
  void showInfo() {
    print('호선 : $lineNumber');
    print('승객 수 : $count');
    print('수익금 : $money');
  }
}