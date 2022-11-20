import 'dart:math';
import 'Circle.dart';
import 'Rectangle.dart';
import 'Square.dart';
import 'Shape.dart';

void main() {
  //Question 3

  // create and test Circle class
  Circle circle = Circle(name: "Circle1", Radius: 4);
  print(circle.toString());
  print(circle.area());

  // create and test Rectangle class
  Rectangle rectangle = Rectangle(name: "Rectangle1", length: 3, width: 4);
  print("\n" + rectangle.toString());
  print(rectangle.area());

  // create and test Square class
  Square square = Square(name: "Square1", length: 3);
  print("\n" + square.toString());
  print(square.area());
}
