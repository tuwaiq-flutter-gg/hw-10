main() {
  Shape c1 = Circle("Circle", 3);
  print(c1.area());
  print(c1.toString());
  Shape r1 = Rectangle("Rectangle", 10, 5);
  print(r1.area());
  print(c1.toString());
  Shape e1 = Eclipse("Eclipse", 5, 6);
  print(e1.area());
  print(e1.toString());
}

class Shape {
  String? shapeName;
  Shape({this.shapeName});
  final double PI = 3.1415926535897932;
  @override
  toString() {
    return shapeName!;
  }

  area() {}
}
class Circle extends Shape {
  double? radius;

  Circle(String name, this.radius) : super(shapeName: name);

  @override
  area() {
    return PI * radius!;
  }
}

class Rectangle extends Shape {
  double? lenght;
  double? width;
  Rectangle(String shapeName, this.lenght, this.width)
      : super(shapeName: shapeName);

  @override
  area() {
    return lenght! * width!;
  }
}

class Eclipse extends Shape {
  double? lenght;
  double? height;

  Eclipse(String name, this.lenght, this.height) : super(shapeName: name);

  @override
  area() {
    return lenght! * height! * PI;
  }
}
