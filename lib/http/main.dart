import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  // 헤더
  Map<String, String> header = {};
  // 바디
  Todo? todo;
  // var res = fetchTodo(); 미완료 상태이다. 완료상태로는 data, error 상태가 있다
  var res = await fetchTodo(); // await 키워드를 사용함으로서 완료상태가 된다.
  if(res.statusCode == 200) {
    print("통신 성공");
    print(res.headers.runtimeType); // 반드시 암기
    print(res.body.runtimeType);
    header = res.headers;
    // String --> Map --> Todo
    // dart에서는 String을 Map으로 변환시킨다. 우리는 이 Map을 Todo로 변환시켜야한다.
    Map<String, dynamic> httpBody = jsonDecode(res.body); // String을 Map으로 파싱
    print(httpBody.toString());
    print(httpBody["title"]); // title 값 출력
    print(httpBody["aaaa"]); // 없는 키 값을 호출하면 null 출력
    // Map --> Todo 클래스 타입

    todo = Todo.fromJson(httpBody);
  } else {
    print("통신 실패");
  }
  print("---------------");
  print(todo?.toString()) ;
  print(todo?.userId);
  print(todo?.id);
  print(todo?.title);
  print(todo?.completed);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  // []
  // {} : 명명된 파라미터, required : 필수(반드시 들어와야한다)
  Todo({required this.userId, required this.id, required this.title, required this.completed});

  Todo.fromJson(Map<String, dynamic> map) :
      userId = map["userId"],
      id = map["id"],
      title = map["title"],
      completed = map["completed"];

  @override
  String toString() {
    return "userId : $userId, id : $id, title: $title, completed : $completed";
  }
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
}
