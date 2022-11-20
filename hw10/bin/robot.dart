import 'dart:io';

class robot {
  robot() {
    //#4
    print("please try to interactive with robot, it name is Ali");
    String? input = stdin.readLineSync();
    //#5
    if (input!.contains("?")) {
      print("Sure");
    }
    //#7
    else if (input == "") {
      print("Okay. Be that way!");
    }
    //#6
    else if (input == input.toUpperCase()) {
      print("Whoa, calm down!");
    }
    
    
    //#8
    else {
      print("Anyway");
    }
  }
}
