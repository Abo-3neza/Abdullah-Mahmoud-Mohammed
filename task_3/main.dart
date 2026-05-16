void main() {
  var students = <String>{};

  addStudent(students, 'Ali');
  addStudent(students, 'Sara');
  addStudent(students, 'Mona');
  addStudent(students, 'Ali');

  print('Students:');
  printStudents(students.toList(), 0);

  students.forEach((name) => print('- $name'));

  var newStudents = {'Khaled', 'Nour'};
  var allStudents = {...students, ...newStudents};
  print('\nAll students after merge: $allStudents');

  var courses = <String, List<Map<String, dynamic>>>{};

  addCourse(courses, 'Ali', 'Math', grade: 85);
  addCourse(courses, 'Ali', 'Science', grade: 90);
  addCourse(courses, 'Sara', 'Math');
  addCourse(courses, 'Sara', 'English', grade: 75);

  print('\nAverage grade for Ali: ${averageGrade(courses, 'Ali')}');
  print('Average grade for Sara: ${averageGrade(courses, 'Sara')}');
}

void addStudent(Set<String> students, String name) {
  students.add(name);
}

void printStudents(List<String> list, int index) {
  if (index >= list.length) return;
  print(list[index]);
  printStudents(list, index + 1);
}

void addCourse(
  Map<String, List<Map<String, dynamic>>> courses,
  String student,
  String course, {
  int grade = 0,
}) {
  if (!courses.containsKey(student)) {
    courses[student] = [];
  }
  courses[student]!.add({'course': course, 'grade': grade});
}

double averageGrade(
  Map<String, List<Map<String, dynamic>>> courses,
  String student,
) {
  var list = courses[student];
  if (list == null || list.isEmpty) return 0;
  var total = list.fold(0, (sum, item) => sum + (item['grade'] as int));
  return total / list.length;
}
