import 'dart:io';
import 'dart:math';

main() {
  Shape Circle1 = circle(radius: 6);
  print(Circle1.toString());
  print("Circle area : ${Circle1.area()}");

  Shape squar1 = squar(length: 6, width: 6);
  print(squar1.toString());
  print("Squar area : ${squar1.area()}");

  Shape rectangle1 = rectangle(length: 7, width: 4);
  print(rectangle1.toString());
  print("Reqtangle area : ${rectangle1.area()}");
}

abstract class Shape {
  String shapeName;
  Shape({required this.shapeName});
  area();

  @override
  toString() {
    return "name of the shape : $shapeName";
  }
}

class Circle extends Shape {
  double? radios;

  Circle({required this.radios}) : super(shapeName: "Circle");

  @override
  area() {
    return (radios! * radios!) * pi;
  }
}

class Reqtangle extends Shape {
  double? width;
  double? hight;

  Reqtangle({required this.hight, required this.width})
      : super(shapeName: "Reqtangle");

  @override
  area() {
    return width! * hight!;
  }
}
