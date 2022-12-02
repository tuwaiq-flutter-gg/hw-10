
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  
  print("=-" * 30);

  // 3
  Shape Circle1 = Circle(radios: 2);
  print("Circle area : ${Circle1.area()}");
  print(Circle1.toString());

  print("=-" * 30);

  Shape Reqtangle1 = Reqtangle(hight: 2, width: 4);
  print("Reqtangle area : ${Reqtangle1.area()}");
  print(Reqtangle1.toString());

  print("=-" * 30);

  Shape Squair1 = Squair(hight: 2, width: 2);
  print("Squair area : ${Squair1.area()}");
  print(Squair1.toString());

  print("=-" * 30);

  // ------------------Input from the user------------------------

  // 4 , 5 , 6 , 7 , 8
  print("Ali is a robot. In conversation, his responses are very limited.");
  stdout.write("say anything to Ali : ");

  var AreYouOK = stdin.readLineSync();

  if (AreYouOK!.isEmpty) {
    print("Okay. Be that way!");
  } else if ( AreYouOK[AreYouOK.length -1] == "?" ) {
    print("sure");
  } else if ( AreYouOK == AreYouOK.toUpperCase() ) {
    print("Whoa, calm down!");
  } else {
    print("Anyway");
  }

  

  
}

// 1
abstract class Shape {
  String? shapeName ;

  Shape({ required this.shapeName});

  area();

  @override
  toString(){
    return "name of the shape : $shapeName" ;
  }
}

// 2
class Circle extends Shape {
  double? radios ;

  Circle({ required this.radios}) : super(shapeName: "Circle");

  @override
  area() {
    return ( radios! * radios! ) * pi ;
  }

}

class Reqtangle extends Shape {
  double? width ;
  double? hight ;

  Reqtangle({ required this.hight , required this.width}) : super(shapeName: "Reqtangle") ;

  @override
  area() {
    return width! * hight! ;
  }
  
}

class Squair extends Shape {
  double? width ;
  double? hight ;

  Squair({ required this.hight , required this.width}) : super(shapeName: "Squair") ;

  @override
  area() {
    return width! * hight! ;
  }
  
}