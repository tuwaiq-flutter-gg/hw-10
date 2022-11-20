import 'Shape.dart';
import 'dart:math';

//Question 2
class Rectangle extends Shape {
  int? length;
  int? width;

  Rectangle({String? name, this.length, this.width}) : super(shapeName: name);

  @override
  area() {
    return length! * width!;
  }
}
