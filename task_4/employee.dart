import 'person.dart';

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void showInfo() {
    print("University: ${Person.universityName}");
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}
