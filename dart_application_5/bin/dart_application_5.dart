
import 'dart:math';
export 'dart_application_5.dart';

abstract class Shape {
  String? shapeName;

  area();
  Shape({required this.shapeName});

  @override
  String toString() {
    return "shape name ${shapeName}";    
  }
}

class  Square extends Shape {

  num? height;
  num? width;

  Square({required this.height, required this.width}) : super(shapeName: "square");

  @override
  area() {
    return (height!*width!) ;
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
    return (height! + width!*2);
  }
}

class Tringle extends Shape {
  num? x;
  num? y;

  Tringle({required this.x, required this.y}) : super(shapeName: "Triangle");

  @override
  area() {
    return (x! * y! * 0.5);
  }
}
