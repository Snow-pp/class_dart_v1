abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal {
  // 메모리에 Animal이 먼저 올라가야 한다.
  Dog(String name) : super(name); // 초기화 이니셜라이즈

  @override
  void makeSound() {
    print("$name이 멍멍합니다.");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name이 야옹야옹합니다.");
  }
}

void main() {
  // Dog dog = Dog("방울");
  // Cat cat = Cat("야옹");
  // List<Animal> animals = [dog, cat];

  List<Animal> animals = [Dog("방울"), Cat("야옹")];
  for(var a in animals) {
    a.makeSound();
  }
}