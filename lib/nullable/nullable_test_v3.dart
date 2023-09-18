void main() {
  String? name = "John"; // 콘솔에 경고 발생
  // String? name = null;
  String nameNotNullable = name!;

  print("name : $name");
}