import 'shape.dart';

//Question No: 2
class Square extends Shape {
  double? side1;
  double? side2 ;
Square({this.side1, this.side2 , String? name}) :super(shapeName: name);

  @override
  area() {
   return side1! * side2!;
  }

     @override
  String toString() {
    
    return "I'm a " + shapeName!;
  }
}