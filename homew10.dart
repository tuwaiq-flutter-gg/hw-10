import 'dart:io';
import 'dart:math';







void main(List<String> args) {

   List<Shape> shapes = [
  circle(radius: 1),
  cylinder(length: 3, width: 2,radius1: 1),
  Triagle(length: 4, width: 5)
];
for(var Shape in shapes ){
  var area;
  print("the shape is ${Shape}, and has area${Shape.area()}}");
}
//..................................................
   print("Hello, I'am ali ");
   var ali = stdin.readLineSync();
   if (ali!.isEmpty) {
     print("Okay. Be that way!");
   } else if (ali[ali.length - 1] == "?") {
     print("Sure");
   }
   if (ali == ali.toUpperCase()) {
     print("Whoa, calm down!");
   } else {
     print("Anyway");
   }
 }


 


//........1.........
  abstract  class Shape {
    final String shapeName;
   const Shape({required this.shapeName});
 
  area() ;
 String toString(){
  return shapeName;
 }
 
}
//......2.............
class circle extends Shape {
  final double radius;
  const  circle ({required this.radius}):super(shapeName:"circle ");
  @override
  area() {
   return pi* pow(2, radius);
  }
}
class cylinder extends Shape {
   final double length;
   final double width;
   
     var radius1;

  cylinder({required this.length, required this.width,required this.radius1}):super(shapeName: " cylinder");
  
  @override
   area() {
   
return width*length*pi* pow(2, radius1);//مفروض قيمة المساحة نصف القطر تربيع *القاعدة *الارتفاع
  }
  
}
//......3..........
class  Triagle extends Shape{
  
   final double length;
   final double width;

  Triagle({required this.length, required this.width }):super(shapeName: "Triagle");

  @override
  area() {
 
    return length*width;
  }

}
