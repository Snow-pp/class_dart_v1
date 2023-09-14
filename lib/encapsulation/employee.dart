class Employee {
  // 변수 private 선언 방법 : _ 언더스코어를 사용한다.
  int? _id; // private 속성이다.
  String? _name;

  // getter
  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  // setter
  void setId(int id) {
    // 방어적 코드 작성 가능
    if(id < 0) {
      print("잘못된 값을 입력하였습니다.");
    }
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }
}