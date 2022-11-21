import 'dart:io'; 
import 'dart:math';
void main() {
Shape circle = Circle(radius: 2);
  print(circle.toString());
  print(circle.area());


  Shape square = Square(height: 20);
  print(square.toString());
  print(square.area());


  Shape rectangle = Rectangle(height: 20, Width: 10);
  print(rectangle.toString());
  print(rectangle.area());



  ///
  ///
  ///
while(true){
stdout.write('Hello ! im Ali, Ask me anything! ');
final input = stdin.readLineSync();
print(input);

if(input == null || input.isEmpty){
print("Okay! Be that way");
}

else if  (input == input.toUpperCase()){
print("Whoa! Calm down");
}

else if  (input!.contains("?")){
print("Sure");
}
else{
  print("Anyway");
}
}


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

class Square extends Shape {
  double height;
  Square({required this.height}) : super(shapeName: "square");
  @override
  area() {
    return height * height;
  }
}

class Rectangle extends Shape {
  double height;
  double Width;
  Rectangle({required this.height, required this.Width})
      : super(shapeName: "Rectangle");
  @override
  area() {
    return height * Width;
  }
}

class Circle extends Shape {
  double radius;
  Circle({required this.radius}) : super(shapeName: "Circle");
  @override
  area() {
    return pi * radius;
  }
}