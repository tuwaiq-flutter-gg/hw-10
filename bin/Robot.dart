import 'dart:io';

//Question 4
main() {
  print("Start to talk");

  while (true) {
    //used infite loop since it is a conversation

    String? message = stdin.readLineSync();

    if (message!.trim() != "") {
      if (message.contains("?")) //check if its a question // requirment 5
        print("Sure");
      else if (message.toUpperCase() ==
          message) //check if its all caps // requirment 6
        print("Whoa, calm down!");
      else
        print("Anyway"); // any other input // requirment 8
    } else
      print("Okay. Be that way!"); //if the string is empty // requirment 7
  } //end loop
}
