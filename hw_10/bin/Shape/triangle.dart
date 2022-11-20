import 'shape.dart';

//Question No: 2
class Triangle extends Shape {
  double? base;
  double? height ;
Triangle({this.base, this.height , String? name}) :super(shapeName: name);

  @override
  area() {
   return 1/2 * base! * height!;
  }

     @override
  String toString() {
    
    return "I'm a " + shapeName!;
  }

  

}