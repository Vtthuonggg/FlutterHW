abstract class Animals {
  String name;
  Animals(this.name);
  void eat();
  void sleep();
}

abstract class Fly {
  void fly();
}

abstract class Walk {
  void walk();
}

abstract class Swim {
  void swim();
}

class Dog extends Animals implements Walk {
  Dog(super.name);

  @override
  void walk() {
    print("$name is walking");
  }

  @override
  void eat() {
    print("$name like to eat meat");
  }

  @override
  void sleep() {
    print("$name is sleeping\n");
  }
}

class Bird extends Animals implements Fly, Walk {
  Bird(super.name);

  @override
  void fly() {
    print("$name can fly");
  }

  @override
  void walk() {
    print("$name can walk");
  }

  @override
  void eat() {
    print("$name like to eat caterpillar");
  }

  @override
  void sleep() {
    print("$name is sleeping\n");
  }
}

class Fish extends Animals implements Swim {
  Fish(super.name);

  @override
  void swim() {
    print("$name can swim");
  }

  @override
  void eat() {
    print("$name like to eat the fish smaller");
  }

  @override
  void sleep() {
    print("$name is sleeping\n");
  }
}

class Duck extends Animals implements Fly, Walk, Swim {
  Duck(super.name);

  @override
  void eat() {
    print("$name like to eat snail");
  }

  @override
  void fly() {
    print("$name can fly");
  }

  @override
  void sleep() {
    print("$name is sleeping\n");
  }

  @override
  void swim() {
    print("$name can fly");
  }

  @override
  void walk() {
    print("$name can walk");
  }
}

void main() {
  Dog dog = Dog('Corgy');
  dog.walk();
  dog.eat();
  dog.sleep();

  Bird bird = Bird('Eagle');
  bird.walk();
  bird.fly();
  bird.eat();
  bird.sleep();

  Fish fish = Fish("Nemo");
  fish.swim();
  fish.eat();
  fish.sleep();

  Duck duck = Duck("Donal");
  duck.walk();
  duck.fly();
  duck.swim();
  duck.eat();
  duck.sleep();
}
