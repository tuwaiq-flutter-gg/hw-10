import 'Shape.dart';
import 'dart:math';

//Question 2
class Square extends Shape {
  int? length;

  Square({String? name, this.length}) : super(shapeName: name);

  @override
  area() {
    return pow(length!, 2);
  }
}
