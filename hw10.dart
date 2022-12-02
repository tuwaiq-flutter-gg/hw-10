import 'dart:io';
import 'dart:math';

void main() {
  print("-" * 50);

  //3
  Shape circle = Circle(radius: 5);
  print("The area of the circle is ${circle.area()}");
  print(circle.toString());

  print("-" * 50);

  Shape rectangle = Rectangle(height: 25, width: 10);
  print("The area of rectangle is ${rectangle.area()}");
  print(rectangle.toString());

  print("-" * 50);

  Shape cube = Cube(x: 52, y: 10, z: 17);
  print("The area cube is ${cube.area()}");
  print(cube.toString());

  //4 , 5 , 6 , 7 , 8

  print("-" * 50);

  print("Hello, I am Ali, what do you want from me?");
  var ali = stdin.readLineSync();
  if (ali!.isEmpty) {
    print("Okay. Be that way!");
  } else if (ali[ali.length - 1] == "?") {
    print("Sure");
  }
  if (ali == ali.toUpperCase()) {
    print("Whoa, calm down!");
  } else {
    print("Anyway");
  }
}

//1

abstract class Shape {
  String? shapeName;

  area();
  Shape({required this.shapeName});

  @override
  String toString() {
    return "name of the shape is $shapeName";
  }
}

class Circle extends Shape {
  double? radius;

  Circle({required this.radius}) : super(shapeName: "Circle");

  @override
  area() {
    return (radius! * 2) * pi;
  }
}

//2
class Rectangle extends Shape {
  num? height;
  num? width;

  Rectangle({required this.height, required this.width})
      : super(shapeName: "Rectangle");

  @override
  area() {
    return (height! * width!);
  }
}

class Cube extends Shape {
  num? x;
  num? y;
  num? z;

  Cube({required this.x, required this.y, required this.z})
      : super(shapeName: "Cube");

  @override
  area() {
    return (x! * y! * z!);
  }
}
