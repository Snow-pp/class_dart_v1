void main() {
  double radius = 5.0;
  double width = 3.0;
  double height = 4.0;

  print(calculateCircleArea(radius));
  print(calculateRectangleArea(width, height));
}

double calculateCircleArea(double radius) {
  return 3.14 * radius * radius;
}

double calculateRectangleArea(double width, double height) {
  return width * height;
}