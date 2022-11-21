import 'dart:io';

void main(List<String> args) {
  String? Talk;
  while (true) {
    stdout.write(' Talk with Ali :');
    Talk = stdin.readLineSync();
    if (Talk != null) {
      Talk = Talk.trim();
    }
    if (Talk == null) {
      print('dont understand U');
    } else {
      if (Talk == "Are you okay?") {
        print("Sure");
      }
    }
  }
}