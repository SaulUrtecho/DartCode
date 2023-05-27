// This is the father class
abstract class Animal {
  void breathe() => print('Breathing');
}

// these are mixins class which contains another functionalities
mixin Bark {
  void bark() => print('Barking');
}

mixin Fly {
  void fly() => print('Flying');
}

mixin Crawl {
  void crawl() => print('Crawling');
}

// In these classes we inherited from Animal class as well as each mixin
class Dog extends Animal with Bark {}

class Bat extends Animal with Fly {
  void display() {
    print('....Bat...');
    breathe();
    fly();
  }
}

class Snake extends Animal with Crawl {}

void main() {
  var dog = Dog();
  dog.breathe();
  dog.bark();

  var bat = Bat();
  bat.display();
}
