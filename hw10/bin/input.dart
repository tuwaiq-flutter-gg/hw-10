import 'dart:io';

main() {
  bool isCap = true;
  print("Enter a messgae");
  try {
    String userinput = stdin.readLineSync()!;
    for (int i = 0; i < userinput.length; i++) {
      if (userinput[i].contains(RegExp(r'[a-z]'))) {
        isCap = false;
      }
    }
    if (userinput[userinput.length - 1] == "?") {
      //if it is a question lat index is ?
      print("Sure");
    } else if (isCap) {
      print("Whoa, calm down!"); //all caps
    } else {
      print("Anyway"); //if not a quastion and all caps
    }
  } catch (e) {
    //if the input is empty
    print("Okay. Be that way!");
  }
}
