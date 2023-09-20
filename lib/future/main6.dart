import 'package:http/http.dart' as http;

void main() {
  // HTTP 요청 및 응답 처리를 만들어 보자.
  // https://jsonplaceholder.typicode.com/posts/10
  // https://jsonplaceholder.typicode.com/posts
  fetchPost().then((res) {
    print("HTTP status code : ${res.statusCode}");
    print("-------------------------");
    print("HTTP Message Header : ${res.headers}");
    print("-------------------------");
    print("HTTP Message Body : ${res.body}");
  });

  fetchPostList().then((res) {
    print("HTTP status code : ${res.statusCode}");
    print("-------------------------");
    print("HTTP Message Header : ${res.headers}");
    print("-------------------------");
    print("HTTP Message Body : ${res.body}");
  });
}


Future<http.Response> fetchPost() async {
  const url = "https://jsonplaceholder.typicode.com/posts/10";
  // get메서드 안에서 uri 객체 생성해서 던진다.
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}

Future<http.Response> fetchPostList() async {
  const url = "https://jsonplaceholder.typicode.com/posts";
  // get메서드 안에서 uri 객체 생성해서 던진다.
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}