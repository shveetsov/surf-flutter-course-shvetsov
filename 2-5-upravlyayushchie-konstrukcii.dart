import 'dart:io';

void main() {
  // Используя switch, напишите программу в методе main(), которая выводит название месяца по номеру от 1 до 12.
  int monthCount = 12;
  
  switch (monthCount) {
  case 1:
    print('Январь');
    break;
  case 2:
    print('Февраль');
    break;
  case 3:
    print('Март');
    break;
  case 4:
    print('Апрель');
    break;
  case 5:
    print('Май');
    break;
  case 6:
    print('Июнь');
    break;
  case 7:
    print('Июль');
    break;
  case 8:
    print('Август');
    break;
  case 9:
    print('Сентябрь');
    break;
  case 10:
    print('Октябрь');
    break;
  case 11:
    print('Ноябрь');
    break;
  case 12:
    print('Декабрь');
    break;
  default:
    print('Неверный номер месяца');
  }
  
  //    Используя циклы, напишите программу, которая выводит на консоль все четные числа от 0 до 100.
  for(int i = 0; i<101; i++) {
    if(i%2 == 0 && i != 0) {
      print(i);
    }
  }  
  
  // Написать программу, которая слушает ввод в консоли, складывает вводимые пользователем числа. Если пользователь ввел stop, завершить приложение. Если пользователь вводит некорректные данные - прервать текущую итерацию, начать заново.
  int sum = 0;
  String? input;

do {
  print('Введите число:');
  input = stdin.readLineSync();
  var value = int.tryParse(input!);
  if (value != null) {
  sum += value;
  } else {
    sum = 0;
  }
  print('Сумма: $sum, неверный ввод');
} while (input != 'stop');
}
