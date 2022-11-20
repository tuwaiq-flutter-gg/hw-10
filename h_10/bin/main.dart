import 'dart:io';
import 'dart:math';
// import 'dart:svg';
// import 'dart:svg';
import 'package:h_10/h_10.dart' as h_10;

void main(List<String> arguments) {
  //3-all the three shapes you create in the main
  //call circle class
  Circle circle = Circle(radius: 5.5);
  print("The area of Circle is  \x1B[31m${circle.area()}\x1B[0m");

//call rectangle class
  Rectangle rectangle = Rectangle(height: 9, wight: 8);
  print("The area of Rectangle  \x1B[32m${rectangle.area()}\x1B[0m");

  //call Triangle class
  Triangle triangle = Triangle(base: 50, height: 55);
  print("The area of Triangle is  \x1B[34m${triangle.area()}\x1B[0m");


//4 - 5 - 6 - 7 - 8
  print("\n   \x1b[1;33mWelcome to the robot world ^ـ^ \x1b[0m");
  print(" \x1b[1;33m__________________________________\x1b[0m");
  stdout.writeln("\n Hello, I am Ali, how can I help? ");

  while (true) {
    String input = stdin.readLineSync()!;
    if (input.contains('?')) {
      print("Sure");
    } else if (input.isEmpty) {
      print("Okay. Be that way!");
    } else if (input == input.toUpperCase()) {
      print('Whoa, calm down!');
    } else {
      print("Anyway");
    
    }
  }
}



//1 - superclass with the  properties ,shapeName ,area() ,toString
abstract class Shape {
  String? shapeName;

  Shape({required this.shapeName});

  area() {}

//method that returns the name of the shape.
  @override
  toString() {
    return shapeName!;
  }
}

//2-create the first  classe for  shape
class Circle extends Shape {
  double? radius;
  double pi = 3.14159265358979323846;

  Circle({required this.radius}) : super(shapeName: "Circle");

  area() {
    return (pi * radius! * radius!);
  }
}

//create the second classe for shape
class Rectangle extends Shape {
  double? wight, height;

  Rectangle({required this.height, required this.wight})
      : super(shapeName: "Rectangle");

  area() {
    return wight! * height!;
  }
}

//Create the third class of the shape
class Triangle extends Shape {
  double? base, height;

  Triangle({required this.base, this.height}) : super(shapeName: "Triangle");

  @override
  area() {
    return 2 * (base! * height!);
  }
}
