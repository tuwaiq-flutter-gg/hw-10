import 'dart:math';
import 'Dart:io';

main() {
//
  circle circle1 = circle(name: "circle", radius: 10);

  rectangle rectangle1 = rectangle(name: "rectangle", width: 3, height: 6);

  print(circle1.toString());
  print(rectangle1.toString());

  // task:4 - 8
  for (;;) {
    print("talk to Ali, enter something, note: this infinte loop");
    String? input = stdin.readLineSync();

    if (input == null || input == "") {
      print("Okay. Be that way! \n");
    } else if (input.toUpperCase() == input) {
      print("Whoa, calm down! \n");
    } else if (input.contains("?")) {
      print("Sure \n");
    } else {
      print("Anyway");
    }
  }
}

// task:1 - 3
abstract class Shape {
  String? name;

  Shape({this.name});

  double area();

  @override
  String toString() {
    return "$name";
  }
}

class circle extends Shape {
  double radius;
  circle({required this.radius, required super.name});

  @override
  double area() => pi * pow(radius, 2);
}

class rectangle extends Shape {
  double width, height;

  rectangle({required this.width, required this.height, required super.name});
  @override
  area({double? width, height}) => width! * height;
}
