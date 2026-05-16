class Person {
  String name;
  int _age;

  static String universityName = "Sohag University";

  Person(this.name, this._age);

  int get age => _age;
  set age(int value) => _age = value;
}
