import 'dart:io';
import 'dart:math';

void main() {
  //3
  Shape square = Square(height: 4);
  Shape rectangle = Rectangle(height: 2, width: 4);
  Shape cub = Cube(height: 4);
  print("Calculating the area of a ${square.toString()} = ${square.area()} ");
  print(
      "Calculating the area of a ${rectangle.toString()} = ${rectangle.area()} ");
  print("Calculating the area of a ${cub.toString()} = ${cub.area()} ");

  //4,5,6,7,8

  print("Hi, I'm Ali and I'm a robot :).Speak with me ");
  var userInput = stdin.readLineSync();
  userInput = userInput!.trim();

  if (userInput == "how are you?" ||
      userInput == "are you well?" ||
      userInput == "all right?") {
    print("Sure");
  } else if (userInput == userInput.toUpperCase()) {
    print("Whoa, calm down!");
  }else if (userInput == "ali" || userInput == "Ali"|| userInput.isEmpty) {
    print("Okay. Be that way!");
  }  else if(userInput.isNotEmpty){
    print("Anyway");
  }
}

//1
abstract class Shape {
  String? shapeName;

  Shape({this.shapeName});

  area();

  @override
  toString() {
    return shapeName!;
  }
}

//2part1
class Square extends Shape {
  double? height;

  Square({this.height}) : super(shapeName: "Square");

  @override
  area() {
    return pow((height! * height!), 2);
  }
}

//2part2
class Rectangle extends Shape {
  double? height;
  double? width;

  Rectangle({this.height, this.width}) : super(shapeName: "Rectangle");

  @override
  area() {
    return height! * width!;
  }
}

//2part3
class Cube extends Shape {
  double? height;

  Cube({this.height}) : super(shapeName: "Cube");

  @override
  area() {
    return (pow(height!, 2)) * 6;
  }
}

