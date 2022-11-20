import 'dart:math';

void main(List<String> args) {
  //[3] solution
  List<Shape> shapes = [
    Circle(radius: 2),
    Square(side: 4),
    Rectangle(length: 7, width: 2)
  ];

  for (var shape in shapes) {
    print("the shape is $shape and its area is ${shape.area()}");
  }
}

//[1] solution
abstract class Shape {
  final String shapeName;

  const Shape({required this.shapeName});

  area();

  String toString() {
    return shapeName;
  }
}

//[2] solution
class Circle extends Shape {
  final double radius;

  const Circle({required this.radius}) : super(shapeName: "Circle");

  @override
  area() {
    return pi * radius * radius;
  }
}

//[2] solution
class Square extends Shape {
  final double side;

  const Square({required this.side}) : super(shapeName: "Square");

  @override
  area() {
    return side * side;
  }
}

//[2] solution
class Rectangle extends Shape {
  final double length;
  final double width;

  const Rectangle({required this.length, required this.width})
      : super(shapeName: "Rectangle");

  @override
  area() {
    return width * length;
  }
}
