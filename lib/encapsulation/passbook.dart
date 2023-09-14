// 통장 클래스 만들기
class Passbook {
  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  // 축약형 get, set 메서드 만들기
  // String getName() { // 기본형
  //   return _name!;
  // }

  String? get name => _name; // 축약형
  String? get accountNumber => _accountNumber;
  int? get accountBalance => _accountBalance;

  set name(String? name) => _name;
  set accountNumber(String? accountNumber) => _accountNumber;
  set accountBalance(int? accountBalance) => _accountBalance;

  // private 변수는 명명된 매개 변수로 만들 수 없음
  // Passbook({this._name, this._accountNumber, this._accountBalance}); => 오류
  Passbook(this._name, this._accountNumber, this._accountBalance);

  void deposit(int money) {
    // this.accountBalance +=money; => int?와 int는 다른 타입이기때문에 오류 발생
    // accountBalance값이 null이면 0으로 세팅
    this._accountBalance = (this._accountBalance ?? 0) + money;
    print("입금 완료");
  }

  int withdraw(int money) {
    int currentMoney = this._accountBalance ?? 0;
    if(currentMoney < money) {
      print("잔액 부족");
      return 0;
    } else {
      currentMoney -= money;
      this._accountBalance = currentMoney;
      return money;
    }
  }

}