void main(List<String> arguments) {
  // 2 Задание
  var sportcar = Sportcar(Colors.red);
  var bike = Bike(Colors.blue);
  var truck = Truck(Colors.green);

  print(sportcar);
  sportcar.runEngine();
  print(bike);
  print(truck);
  truck.runEngine();
}

//////////////////////////////////////// кусок 3 задания
class TranslationToString<T> {
  String translationFunction(T value) {
    return value.toString();
  }
}
//////////////////////////////////////// конец 3 задания

// Создаю варианты цветов
enum Colors {
  red,
  green,
  blue,
}

///////////////////////////// Класс машина /////////////////////////////
abstract class Car with Painter{
  late double weight;
  void run();

  // конструктор машины
  Car(Colors colorName) {
    super.setColor(colorName);
  }
}

///////////////////////////// Класс грузовик /////////////////////////////
class Truck extends Car with Engine{
  // конструктор грузовика
  Truck(super.colorName);

  // Вывод цвета
  @override
  String toString() {
    return 'Грузовик $_colorName цвета';
  }

  @override
  double get weight => 10;

  @override
  void run() {
    super.runEngine();
  }
}

///////////////////////////// Класс спорткар /////////////////////////////
class Sportcar extends Car with Engine{
  //конструктор спорткара
  Sportcar(super.colorName);

  // Вывод цвета
  @override
  String toString() {
    return 'Спорткар $_colorName цвета';
  }

  @override
  double get weight => 2;

  @override
  void run() {
    super.runEngine();
  }
}

///////////////////////////// Класс велосипед /////////////////////////////
class Bike with Painter {
  // конструктор велика
  Bike(Colors colorName) {
    super.setColor(colorName);
  }

  // Вывод цвета
  @override
  String toString() {
    return 'Велосипед $_colorName цвета';
  }
}

///////////////////////////// миксин цвета /////////////////////////////
mixin Painter {
  late String _colorName;

  void setColor(Colors color) {
    switch (color) {
      case Colors.red:
        _colorName = 'красного';
        break;
      case Colors.green:
        _colorName = 'зеленого';
        break;
      case Colors.blue:
        _colorName = 'голубого';
        break;
    }
  }
}

mixin Engine on Car{
  late int enginePower = 350;

  void runEngine() {
    print('Двигатель работает. Максимальная скорость = ${enginePower/weight}');
  }
}
