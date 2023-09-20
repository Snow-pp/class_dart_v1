import 'package:http/http.dart' as http;

void main() {
  // https://jsonplaceholder.typicode.com/todos/1
  // fetchTodo().then((res) {
  //   print("http status code : ${res.statusCode}");
  //   print("---------------------");
  //   print("HTTP Message Header : ${res.headers}");
  //   print("---------------------");
  //   print("HTTP Message Body : ${res.body}");
  // });

  fetchTodoList().then((res) {
    print("HTTP status code : ${res.statusCode}");
    print("---------------------");
    print("HTTP Message Header : ${res.headers}");
    print("---------------------");
    print("HTTP Message Body : ${res.body}");
  });
}

// 함수 설계
Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  // get 메서드 안에는 URI 객체를 만들어서 던져야 한다.
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}

// 함수 설계
Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  // get 메서드 안에는 URI 객체를 만들어서 던져야 한다.
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}