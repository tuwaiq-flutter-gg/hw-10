//#1

import 'dart:math';

abstract class Shape {
  late final String? shapeName;
  Shape({this.shapeName});

  area();
  @override
  String toString() {
    return "the shape name is: $shapeName";
  }
}

//#2
class Circle extends Shape {
  Circle({required super.shapeName});

  @override
  area({double? radius}) {
    return pi * pow(radius!, 2);
  }
}

class Square extends Shape {
  Square({required super.shapeName});

  @override
  area({double? height}) {
    return pow(height!, 2);
  }
}

class Rectangle extends Shape {
  Rectangle({required super.shapeName});
  @override
  area({double? width, double? height}) {
    return width! * height!;
  }
}
