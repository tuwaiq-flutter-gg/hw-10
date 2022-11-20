import 'dart:io';
import 'dart:math';

main() {
  Shape Circle1 = circle(radius: 4);
  print(Circle1.toString());
  print("Circle area : ${Circle1.area()}");

  Shape squar1 = squar(length: 4, width: 4);
  print(squar1.toString());
  print("Squar area : ${squar1.area()}");

  Shape rectangle1 = rectangle(length: 3, width: 6);
  print(rectangle1.toString());
  print("Reqtangle area : ${rectangle1.area()}");

  ali alirobot = ali();

}

abstract class Shape {
  String? shapeName;
  Shape({required this.shapeName});

  area();

  @override
  toString() {
    return ("The shape name is $shapeName");
  }
}

class circle extends Shape {
  double? radius;
  circle({required this.radius}) : super(shapeName: "circle");

  @override
  area() {
    var circleArea = pi * pow(radius!, 2);
    return circleArea;
  }
}

class squar extends Shape {
  double? length;

  double? width;

  squar({super.shapeName = "squar", required this.length, required this.width});

  @override
  area({double? width, double? length}) {
    var squarArea = width! * length!;
    return squarArea;
  }
}

class rectangle extends Shape {
  double? width;
  double? length;

  rectangle({required this.length, required this.width})
      : super(shapeName: "rectangle");

  @override
  area() {
    var rectangleArea = length! * width!;
    return rectangleArea;
  }
}

abstract class Robots {
  aliRobot();
}

class ali extends Robots {
  @override
  aliRobot() {
    
    String? sentence = stdin.readLineSync();
    if (sentence == "Are you ok?") {
      print("sure");
    } else if (sentence!.isEmpty == sentence?.toUpperCase()) {
      print("Whoa, calm down!");
    } else if (sentence.length == 0) {
      print("Okay. Be that way!");
    } else {
      print("Anyway");
    }
  }
}
