import 'developer.dart';
import 'person.dart';

void main() {
  Developer dev = Developer("Zakaria", 22, 18000);
  dev.showInfo();
  dev.programming();
  dev.communication();
  print(Person.universityName);
}
