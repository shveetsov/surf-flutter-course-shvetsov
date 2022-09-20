void main(List<String> arguments) {
  // 1 Задание
  Student st = Student('Кирилл', 'Швецов', DateTime.utc(2019));
  st.fullInfoStudent();
}

class User {
  late String name;
  late String surname; 
  User(this.name, this.surname);

  void fullName() {
    print('Имя и фамилия: $name $surname');
  }
}

class Student extends User{
  late DateTime yearOfAdmission;
  late int currentCourse = DateTime.now().year - yearOfAdmission.year;

  Student(
    String name, 
    String surname, 
    this.yearOfAdmission
  ) : super(name, surname);

  void fullInfoStudent() {
    fullName();
    print('Год поступления: ${yearOfAdmission.year}');
    print('Текущий курс: $currentCourse');
  }
}
