import 'package:hw10/hw10.dart' as hw10;
import 'Shapes.dart';
import 'robot.dart';

void main() {
  //#3
  Circle circle1 = Circle(shapeName: "Circle");
  Square square1 = Square(shapeName: "square");
  Rectangle rectangle1 = Rectangle(shapeName: "rectangle");

  print(circle1.toString());
  print(square1.toString());
  print(rectangle1.toString());
  print("the area of circle with radius 10: ${circle1.area(radius: 10)}");
   print("the area of square with height 10: ${square1.area(height: 10)}");
   print("the area of rectangle with height 10 and width 20: ${rectangle1.area(height: 10,width: 20)}");

  print(square1.toString());
  print(rectangle1.toString());
  print("hi");
  print("------------------------");
  robot();
}
