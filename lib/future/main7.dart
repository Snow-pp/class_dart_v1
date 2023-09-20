import 'dart:convert';

void main() {
  // 여러 줄의 문자열 ''' ''' (따옴표 3개 사용)
  String jsonStr = '''
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
  ''';

  // 1단계
  // JSON 문자열 형식을 Map 구조로 파싱해보자.
  print("jsonMap : ${json.decode(jsonStr).runtimeType}");
  print(json.decode(jsonStr)); // json.decode() 메서드 사용해서 Map 구조로 변환된 결과
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    // 클래스를 생성해서 아래처럼 생성자를 사용해도 되나 이 방법 사용 X
    // Todo todo = Todo(userId, id, title, completed);
    // print("key : $key");
    // print("value : $value");
    // print("$key : $value");
  });

  Todo myTodo = Todo.fromJson(jsonMap);
  print(myTodo.userId);
  print(myTodo.id);
  print(myTodo.title);
  print(myTodo.completed);
}

// 2단계
// 클래스를 설계해보자.
class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자 - 단일라인 생성자
  Todo(this.userId, this.id, this.title, this.completed);
  // 명명된 생성자 2 - 이름이 있는 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"], // Map 자료구조를 불러오는 형태
        id = json["id"],
        title = json["title"],
        completed = json["completed"];
}