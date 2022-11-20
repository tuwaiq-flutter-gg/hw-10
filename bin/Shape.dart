//Question 1
abstract class Shape {
  String? shapeName;

  Shape({this.shapeName});

  area();

  String toString() {
    return shapeName!;
  }
}
