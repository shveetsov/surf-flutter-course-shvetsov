void main() {
  // 1
  // создаем глобальную переменную
  int a;
  
  // 2
  // создаем локальную переменную
  void typeDouble(){
    double b;
  }
  
  // 3
  // создаем строковую переменную
  var text = 'text';
  // ошибка так как переменная 'a' типа int, а text типа String 
  //a = text; 
  
  // 4
  dynamic dyn = 2;
  // вообще без преобразование не получится присвоить, 
  // а так можно конвертировать в String
  text = dyn.toString();
  
  // 5
  final fin = 1;
  const con = 3;
  
  // Изменить не получится так как эти переменные один раз объявляются
  // final - создаются когда она нужна в программе
  // const - сразу при компиляции
  //fin = con;
  //con = fin;
  
  // 6 (проинициализировал из 1 задания переменную)
  a = 4;
  if((a%2) == 0){
    print('Чётное число');
  } else {
    print('Не чётное число');
  }
  
  // 7
  print('I \u2665 Dart');
  
  // 8
  // 8.i
  var list = [1,2,3,4,5,6,7,8];
  // 8.j
  // вывожу длину списка
  print('Длина списка: ${list.length}');
  // 8.k
  // сортирую в порядке убывания
  list.sort((a, b) => b.compareTo(a));
  print(list);
  // 8.l
  // вернуть первые 3 значения из списка
  var newList = list.sublist(0,3);
  print(newList);
  // 8.m
  // получаю индекс списка в котором хранится значение 5
  print(list.indexOf(5));
  // 8.n
  // удаляю числа с 5 до 8 включительно
  list.removeWhere((item) => item >= 5 && item<=8);
  print(list);
  // 8.o
  // меняю значения списка
  list[0] = 10;
  list[1] = 20;
  list[2] = 30;
  print(list);
  
  // 16
  // 16.q
  var numberBook = {
    'Иван':'2264865',
    'Татьяна':'89523366684', 
    'Олег':'84952256575'
  };
  print("\nТелефонный справочник:");
  numberBook.forEach((key, value) {
  print('$key: $value');
  });
  // 16.s
  print('\nДобавил Екатерину:');
  numberBook.addAll({'Екатерина':'2359942'});
  numberBook.forEach((key, value) {
  print('$key: $value');
  });
  
  // 16.t
  print('\nОбратный список:');
  numberBook = Map.fromEntries(numberBook.entries.toList().reversed);
  numberBook.forEach((key, value) {
  print('$key: $value');
  });
  
  // 21
  // 21.v
  var mySet = {'Москва', 'Вашингтон', 'Париж'};
  // 21.w
  mySet.add('Вашингтон');
  print(mySet.length); // set состоит из неповторяемых элементов, поэтому когда я добавил такой же элемент он не вошел туда
  // 21.x
  String Text = '''She sells sea shells on the sea shore
The shells that she sells are sea shells I am sure.
So if she sells sea shells on the sea shore
I am sure that the shells are sea shore shells''';
  List newText = Text.replaceAll('\n',' ').replaceAll('.','').split(' ');
  
  // выведем уникальные слова 
  print('Уникальных слов: ${Set.of(newText).length}');
    
}
