//import 'dart:ffi';
//import 'dart:svg';

import 'dart:io';

main(){

Circle circle=  Circle(radius:7);

print("Circle Area is : ${circle.area()}");

//print("Circle name is ${circle.toString()}");



Square square = Square(length: 5);
print("Square area is : ${square.area()}");


Rectangular rectangular = Rectangular(length: 4);
print("Rectangular area is : ${rectangular.area()}");



String? ali ;
print(" Hello ,I am Ali , Can i help you? (or ^E to exit) ");
do {
//// Ali as Robot;


String? ali = stdin.readLineSync();

if (ali!.contains("?") || ali != "^E"){
 print("Sure");

}
else if (ali.isEmpty ){
  print(" Okay. Be that way!");
}

else if (ali == ali!.toUpperCase()){
 print("Whoa, calm down !");

} 

else print("Anyway ");
} while (ali !="^E" || ali !=  "^e"  );
}
// ABSTRACT CLASS ========

abstract class Shape{

String? shapeName;

double area();
String toString();

}
// CIRCLE -----------------------
class Circle extends Shape{

double radius;
Circle({this.radius=0});

@override
  area() => 3.24 * radius *radius;

}

class Rectangular extends Shape{

double length;
Rectangular({this.length=0});

@override
   area() => length * length;
    
  }

class Square  extends Shape{

double length;
Square({this.length=0});

@override
 area() => length * length;

}

class robot {

  String? name ;


}