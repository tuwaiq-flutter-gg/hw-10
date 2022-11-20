import 'dart:math';
import 'Dart:io';

main(){
//// start of the shape question

circle circle1= circle(shapeName: "circle");

rectangle rectangle1= rectangle(shapeName: "rectangle");

triangle triangle1= triangle(shapeName: "triangle");

print(circle1.toString());
print(rectangle1.toString());
print("${triangle1.toString()} \n \n");

//// end of the shape question, classes bellow the main
while(true){

print("talk to Ali, enter something, note: this infinte loop");
    String? input = stdin.readLineSync();

if(input==null || input==""){
  print("Okay. Be that way! \n \n");
}
else if(input.toUpperCase()==input){
  print("Whoa, calm down! \n \n");
}
else if(input.contains("?")){
  print("Sure \n \n");
}
else{
  print("Anyway");
}

}
}



//// start of the shape question
 abstract class Shape{

  String? shapeName;

  Shape({this.shapeName}){

  }

  are(){}

  @override
  String toString() {
    return "$shapeName";
  }

}



class circle extends Shape{

  circle({super.shapeName}){}

  @override
  are({double? radius}) {
    // TODO: implement are
    return pi*pow(radius!, 2);
  }

}

class rectangle extends Shape{

  rectangle({super.shapeName}){}

  @override
  are({double? width, height}) {
    // TODO: implement are
    return width !* height;
  }

}

class triangle extends Shape{

  triangle({super.shapeName}){}

  @override
  are({double? width, height}) {
    // TODO: implement are
    return (width !* height);
  }

}

//// end of the shape question

