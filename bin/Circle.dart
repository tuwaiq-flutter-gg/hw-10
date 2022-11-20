import 'Shape.dart';
import 'dart:math';

//Question 2
class Circle extends Shape {
  int? Radius;

  Circle({String? name, this.Radius}) : super(shapeName: name);

  @override
  area() {
    return pi * pow(Radius!, 2);
  }
}
