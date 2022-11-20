import 'dart:io';
import 'Shape/circle.dart';
import 'Shape/square.dart';
import 'Shape/triangle.dart';

main(){
  
  //Circle - Question No: 3
  print("----------------------------------------");
  stdout.write("\nPlaes Enter the Raduies for the Circle: ");
  Circle circle = Circle(
   name: "Circle",
   raduies: double.parse(stdin.readLineSync()!) );
   print("\x1b[0;33m${circle.toString()} My Area is -> ${circle.area()}\n\x1b[0m");
   print("----------------------------------------");

   //Triangle - Question No: 3
   Triangle triangle = Triangle();
   triangle.shapeName = "Triangle";
   stdout.write("\nPlaes Enter the Base of triangle: ");
   triangle.base = double.parse(stdin.readLineSync()!);
   stdout.write("Plaes Enter height of triangle: ");
   triangle.height = double.parse(stdin.readLineSync()!);
   print("\x1b[0;33m${triangle.toString()} My Area is -> ${triangle.area()}\x1b[0m");
   print("\n----------------------------------------");

   //Square - Question No: 3
   Square square = Square(name: "Square");
   stdout.write("\nPlaes Enter the Side 1 From the Square: ");
   square.side1 =  double.parse(stdin.readLineSync()!);
   stdout.write("Plaes Enter the Side 2 From the Square: ");
   square.side2 =  double.parse(stdin.readLineSync()!);
   print("\x1b[0;33m${square.toString()} My Area is -> ${square.area()}\x1b[0m");
   print("\n----------------------------------------");




  //Question No: 4 + 5 + 6 + 7 + 8
  print("Ali: Hello i'm Ali and You? ");
  stdout.write("You: ");
  String? name = stdin.readLineSync();
  print("Ali: How are you $name");
  stdout.write("You: ");
  String? answer = stdin.readLineSync(); 
  stdout.write("You: ");
  String? ask = stdin.readLineSync();
  if(ask == "Are you okay?"){
    print("Ali: Sure");
  } else{
    print("Ali: No, i'm not");
  }

  stdout.write("You: ");
  String? yell = stdin.readLineSync();
  if(yell == "YELL AT HIM"){
    print("Ali: Whoa, calm down!");
  } else if(yell == "Ali" || yell =="ali"){
    print("Ali: Okay. Be that way!");
  } else{
    print("Ali: Anyway ");
  }
 

}