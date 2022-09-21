import 'dart:io';

Future<void> main() async {
  print('keyboardsData');
  keyboardsData();
  print('getUserNamesList');
  getUserNamesList().then((value) => print(value));
  print('inputKeyboards');
  inputKeyboards().listen((event) {print('Введена строка $event');});
}

Future<String> getUserNamesList() async {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Ivan Petr Alex';
  });
}

Future keyboardsData() async {
   print('Введена строка ${stdin.readLineSync()}');
}

Stream inputKeyboards() async*{
  for(;;) {
    String? text = stdin.readLineSync();
    yield text;
    if(text == 'exit') {
      break;
    }
  }
} 
