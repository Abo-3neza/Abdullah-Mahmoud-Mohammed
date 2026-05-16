import 'dart:io';

void main() {

  List<String> names = [];
  List<List<double>> grades = [];

  print('Enter number of students:');
  int? count = int.tryParse(stdin.readLineSync() ?? '');
  while (count == null || count <= 0) {
    print('Please enter a valid number:');
    count = int.tryParse(stdin.readLineSync() ?? '');
  }


  for (int i = 0; i < count; i++) {
    print('\nEnter name for student ${i + 1}:');
    String name = stdin.readLineSync() ?? 'Unknown';
    names.add(name);

    print('Enter number of subjects for $name:');
    int? subCount = int.tryParse(stdin.readLineSync() ?? '');
    while (subCount == null || subCount <= 0) {
      print('Invalid number. Enter again:');
      subCount = int.tryParse(stdin.readLineSync() ?? '');
    }


    List<double> studentGrades = [];
    
    for (int j = 0; j < subCount; j++) {
      print('Enter grade for subject ${j + 1}:');
      double? grade = double.tryParse(stdin.readLineSync() ?? '');
      while (grade == null) {
        print('Invalid grade. Enter a number:');
        grade = double.tryParse(stdin.readLineSync() ?? '');
      }
      studentGrades.add(grade);
    }
    grades.add(studentGrades);
  }

  while (true) {
    print('\n--- MENU ---');
    print('1. Show All Results');
    print('2. Search Student');
    print('3. Exit');
    stdout.write('Choose an option: ');

    String choice = stdin.readLineSync() ?? '';

    if (choice == '1') {
      print('\nResults:');
      for (int i = 0; i < names.length; i++) {
        double total = grades[i].reduce((a, b) => a + b);
        double average = total / grades[i].length;

        String letter;
        if (average >= 90)
          letter = 'A';
        else if (average >= 80)
          letter = 'B';
        else if (average >= 70)
          letter = 'C';
        else
          letter = 'F';

        print(
          '${names[i].toUpperCase()} | Average: ${average.toStringAsFixed(2)} | Grade: $letter',
        );
      }
    } else if (choice == '2') {
      stdout.write('\nEnter student name: ');
      String search = (stdin.readLineSync() ?? '').toLowerCase();
      int index = names.indexWhere((n) => n.toLowerCase() == search);

      if (index != -1) {
        double total = grades[index].reduce((a, b) => a + b);
        int average = (total / grades[index].length).round();
        print('Student Found: ${names[index]} | Rounded Average: $average');

      } else {
        print('Student not found!');
      }
    } else if (choice == '3') {
      print('Exiting...');

      break;
      
    } else {
      print('Invalid choice, try again.');
    }
  }
}
