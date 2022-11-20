import 'dart:io';

void main(List<String> args) {
  String? input;
  while (true) {
    stdout.write('\x1B[34mWrite an Input to Ali : \x1B[0m');
    input = stdin.readLineSync();
    if (input != null) {
      input = input.trim();
    }
    if (input == null) {
      print('Ali says \x1B[31m"Anyway"\x1B[0m');
    } else {
      if (input == "Are you okay?") {
        print('Ali says \x1B[31m"Sure"\x1B[0m');
      } else if (!RegExp(r'[^A-Z]').hasMatch(input)) {
        print('Ali says \x1B[31m"Whoa, calm down!"\x1B[0m');
      } else if (input == ("Ali") || input == ("ali")) {
        print('Ali says \x1B[31m"Okay. Be that way!"\x1B[0m');
      } else {
        print('Ali says \x1B[31m"Anyway"\x1B[0m');
      }
    }
  }
}
