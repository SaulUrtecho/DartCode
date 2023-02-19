import 'dart:math';

enum ShapesType { circle, square, triangle }

abstract class Shape {
  // A Factory Constructor create a new instance from the class
  // though it be an abstract class
  factory Shape(ShapesType type) {
    // we receive the shape and evaluate the shape, then we create a instance for the shape respective
    // adding the 2 integer.
    switch (type) {
      case ShapesType.circle:
        return Circle(2);
      case ShapesType.square:
        return Square(2);
      case ShapesType.triangle:
        return Triangle(2);
    }
  }
  // get method for the area
  double get area;
}

// Circle shape
class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  double get area => pi * pow(radius, 2);
}

// Square shape
class Square implements Shape {
  final double side;
  Square(this.side);
  double get area => pow(side, 2).toDouble();
}

// Triangle shape
class Triangle implements Shape {
  final double side;
  Triangle(this.side);
  double get area => pow(side, 2) / 2;
}

main() {
  // when the object is created we call its get method for retrieve area
  print(Shape(ShapesType.square).area);
  print(Shape(ShapesType.circle).area);
  print(Shape(ShapesType.triangle).area);
}
