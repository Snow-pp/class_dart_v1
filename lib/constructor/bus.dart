class Bus {
  int count; // 승객 수
  int money;

  Bus(this.count, this.money);

  void take(int money) {
    count++;
    this.money += money;
  }
}

class Student2 {
  String name;
  int money;

  Student2(this.name, this.money);

  void takeBus(Bus bus) {
    money -= 1300;
    bus.take(1300);
  }
}

void main() {
  Bus bus100 = Bus(0, 0);
  Bus bus200 = Bus(0, 0);

  Student2 studentKim = Student2("김길동", 10000);
  studentKim.takeBus(bus100);

  print(studentKim.money);
  print(bus100.count);
  print(bus100.money);
}