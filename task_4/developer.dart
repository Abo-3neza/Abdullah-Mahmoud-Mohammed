import 'employee.dart';
import 'skills.dart';

class Developer extends Employee implements Skills {
  Developer(String name, int age, double salary) : super(name, age, salary);

  @override
  void programming() {
    print("Programming skill: Dart and Flutter developer");
  }

  @override
  void communication() {
    print("Communication skill: Good team communication");
  }
}
