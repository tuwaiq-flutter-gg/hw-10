void main(List<String> arguments) {



}

abstract class Shape {
  final String shapeName;
  const Shape({required this.shapeName});
  String toString() {
    return shapeName;
  }

  area();
}

class Circel extends Shape {
  final int radius = 3;
  final double Bi = 3.14;
  const Circel() : super(shapeName: "Circel");

  @override
  area() {
    return radius / 2 * Bi;
  }
}

class Rectangle extends Shape {
  final int hight = 10;
  final int width = 20;
  const Rectangle() : super(shapeName: "Rectangle");

  @override
  area() {
    return 2 * (hight + width);
  }
}

class Squer extends Shape {
  final int Perimeter = 15;

  const Squer() : super(shapeName: "Squer");

  @override
  area() {
    return Perimeter * 4;
  }
}
