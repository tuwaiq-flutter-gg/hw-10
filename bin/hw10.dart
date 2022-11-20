import 'dart:io';
import 'dart:math';

main() {
  // 3
  print("==========Shapes==========");
  Shape circle = Circle(radius: 4);
  print("The Area of the circle is: ${circle.area()}");
  Shape square = Square(lengthOfSide: 3);
  print("The Area of the square is: ${square.area()}");
  Shape triangle = Triangle(base: 3, height: 2);
  print("The Area of the triangle is: ${triangle.area()}");
  ////////////////////////////Ali bot////////////////////////////
  print("==========Ali bot==========");
  print("Hey there, I'm Ali, ask me anything!");
  String? input = stdin.readLineSync();
  bool isUpperCase(String input) {
  assert(input.length == 1);
  final regExp = RegExp('[A-Z]');
  return regExp.hasMatch(input);
}
  if (input == "Ali" || input == "ali") {
    print("Okay. Be that way!");
  } else if (input!.isEmpty) {
    print("Type something!");
  } else if (isUpperCase(input)) {
    print("Whoa, calm down!");
  } else if (input.contains("?")) {
    print("Sure");
  } else {
    print("Anyway");
  }
}

// 1
abstract class Shape {
  String? shapeName;
  Shape({required this.shapeName});
  area();
  @override
  String toString() {
    return shapeName!;
  }
}

// 2
class Circle extends Shape {
  num? radius;
  Circle({required this.radius}) : super(shapeName: "Circle");

  @override
  area() {
    return pi * (pow(radius!, 2));
  }
}

class Square extends Shape {
  num? lengthOfSide;
  Square({required this.lengthOfSide}) : super(shapeName: "Square");
  @override
  area() {
    return pow(lengthOfSide!, 2);
  }
}

class Triangle extends Shape {
  num? base;
  num? height;
  Triangle({required this.base, required this.height})
      : super(shapeName: "Triangle");
  @override
  area() {
    return (base! * height!) / 2;
  }
}