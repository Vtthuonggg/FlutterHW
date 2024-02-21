abstract class Walker{
    void walk();
}

abstract class Swimmer{
    void swim();
}

abstract class Flyer{
    void fly();
}

class Dog implements Walker{
  @override
  void walk() {
    print("Dog can walk");
  }
}

class Fish implements Swimmer{
  @override
  void swim() {
    print("Fish can swim");
  }
}
class Bird implements Walker, Flyer{
  @override
  void fly() {
    print("Bird can fly");
  }
  @override
  void walk() {
    print("Bird can walk");
  }
}

class Duck extends Bird implements Swimmer{
  @override
  void swim() {
    print("Duck can swim");
  }
  void fly() {
    print("Duck can fly");
  }
   void walk() {
    print("Duck can walk");
  }

}

void main(){
    Dog dog = Dog();
    Fish fish = Fish();
    Bird bird = Bird();
    Duck duck = Duck();

    dog.walk();
    fish.swim();
    bird.walk();
    bird.fly();
    duck.walk();
    duck.fly();
    duck.swim();
}