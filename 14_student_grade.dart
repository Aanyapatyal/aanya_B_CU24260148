import 'dart:io';

void main() {
  stdout.write('Enter percentage (0 to 100): ');
  final percentage = double.parse(stdin.readLineSync()!);

  if (percentage < 0 || percentage > 100) {
    print('Please enter a percentage from 0 to 100.');
  } else if (percentage >= 90) {
    print('Grade: A');
  } else if (percentage >= 80) {
    print('Grade: B');
  } else if (percentage >= 70) {
    print('Grade: C');
  } else if (percentage >= 60) {
    print('Grade: D');
  } else {
    print('Grade: F');
  }
}
