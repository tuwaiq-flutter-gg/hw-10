import 'dart:math';
import 'shape.dart';

//Question No: 2
class Circle extends Shape {
  double? raduies;
  Circle({this.raduies , String? name}) : super(shapeName: name);
   
   @override
  String toString() {
    
    return "I'm a " + shapeName!;
  }
     @override
  area(){
    return pi * pow(raduies!, 2);
  }

}