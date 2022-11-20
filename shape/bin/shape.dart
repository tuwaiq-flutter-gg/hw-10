import 'dart:io';
import 'dart:math';
main(){
//____________________3____________________
//call the three shapes.
print("Display the area of shapes:");
print('------------------------------------');
circle circle1 = circle(radius: 10);
print(circle1.toString());
print("The area of Circle = ${circle1.area()}");
print('------------------------------------');
cylinder cylinder1 = cylinder(radius: 5, hight: 3);
print(cylinder1.toString());
print("The area of Cylinder = ${cylinder1.area()}");
print('------------------------------------');
squre squre1 = squre(width: 4, hight: 5.7);
print(squre1.toString());
print("The area of Squre = ${squre1.area()}");
print('------------------------------------');
print('====================================');
//____________________4____________________
//Ali is a robot.

print("Conversation with robot Ali.");
String? newMessage= stdin.readLineSync();
//____________________7____________________
//He says Okay. Be that way! if you address him without actually saying anything.
if (newMessage==null||newMessage==""||newMessage.isEmpty){
print("Okay. Be that way!");}
//____________________6____________________
//He answers Whoa, calm down! if you YELL AT HIM (in all capitals).
else if(newMessage.toUpperCase()==newMessage){
print("Whoa, calm down!");}
//____________________5____________________
//Ali answers Sure if you ask him a question, such as "Are you okay?".
else if (newMessage.contains('?')){
  print("sure");}
//____________________8____________________
//He answers Anyway to anything else.
else {
print("Anyway");
}
}



//____________________1____________________
//create abstract class shape as super class, defined 2 function area and tostring.
abstract class shape{
String? nameShape;
shape({required this.nameShape});

area();
@override
  String toString() {
    return "The name of shape is ${nameShape}";
  }
}

////// shape 1 ////// 
class circle extends shape{
  num? radius;
circle({required this.radius}):super(nameShape:"Circle");//constructor
//____________________2____________________
  @override
  area() {
    return pi *pow(radius!,2) ;
  }
}
////// shape 2 ////// 
class cylinder extends shape{
    num? radius;
    num? hight;
cylinder({required this.radius, required this.hight}):super(nameShape:"Cylinder");//constructor
//____________________2____________________
  @override
  area() {
    return (2*pi *radius!*hight!) ;
  }
}
////// shape 3 ////// 
class squre extends shape{
    num? width;
    num? hight;
squre({required this.width, required this.hight}):super(nameShape:"Squer");//constructor
//____________________2____________________
  @override
  area() {
    return (width!*hight!);
  }

}