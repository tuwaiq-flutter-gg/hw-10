import 'dart_application_5.dart';
import 'dart:io';

main() {
  Square squaree = Square(height: 90, width: 100);
  Rectangle rectangle = Rectangle(height: 90, width: 100);
  Tringle tringle = Tringle(x: 90, y: 100);

  print(squaree.toString());
  print("square = ${squaree.area()}");

  print("rectangle =  ${rectangle.area()}");

  print(" tringle = ${tringle.area()}");

  stdout.write(" hi I'm Ali  what do you need \x1b[0m");
  var respon;
  String? Ans = stdin.readLineSync();
  if (Ans == "Are you okay?") {
    print("Sure");
  } else if (Ans!.isEmpty) {
    print("Okay. Be that way!"); 
  } else if (Ans == Ans.toUpperCase()) {
    print("Whoa, calm down!");
  } else {
    print("Anyway");
  }
}
