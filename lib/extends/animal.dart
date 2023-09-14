class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print("$name is making a sound");
  }
}

class Dog extends Animal {
  String? breed;

  // java에서는 아래와 같이 했으나 dart에서는 허용하지 않는다.
  // Dog(String name, int age) {
  //   super(name, age);
  // }

  // 1단계
  // Dog(super.name, super.age);

  // 2단계 - 초기화 이니셜라이저(initializer)
  Dog(name, age, this.breed) : super(name, age);

  @override
  speak() {
    super.speak();
    print("$name 짖다");
  }
}

void main() {
  Dog dog = Dog("바둑이", 3, "치와와");
  dog.speak();
}