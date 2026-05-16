import 'dart:math';

void main() {
  int degree = Random().nextInt(101);
  print('Degree: $degree');

  if (degree >= 95) {
    print('Grade: +A');
  } else if (degree >= 90) {
    print('Grade: -A');
  } else if (degree >= 85) {
    print('Grade: +B');
  } else if (degree >= 80) {
    print('Grade: -B');
  } else if (degree >= 75) {
    print('Grade: +C');
  } else if (degree >= 70) {
    print('Grade: -C');
  } else if (degree >= 65) {
    print('Grade: +D');
  } else if (degree >= 60) {
    print('Grade: -D');
  } else {
    print('Grade: F');
  }
}
