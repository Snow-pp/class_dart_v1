abstract class Shape {
  // 추상 메서드 선언
  double area(); // 메서드의 body가 없고 선언부만 있다

  void display() {
    print("This is a shape");
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계해야 한다.
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() { // 구현 메서드
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    print("원의 반지름 값은 : $radius");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print("직사각형의 가로 : $width");
    print("직사각형의 세로 : $height");
  }

}

void main() {
  // 추상 클래스는 new와 생성자를 호출할 수 없다. (정의는 가능)
  // Shape shape = new Shape(); 오류가 난다.

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  // Shape는 Circle, Rectangle로 바라볼 수 있다 => 다형성
  List<Shape> shapes = [circle, rectangle];
  for(var s in shapes) {
    s.display();
    print(s.area());
    print("---------------------");
  }

  // ! dart 에서는 익명 구현 클래스의 개념은 없다.
}