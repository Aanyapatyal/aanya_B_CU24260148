import 'dart:io';

void main() {
  stdout.write('Enter student name: ');
  final name = stdin.readLineSync()!;
  stdout.write('Enter marks in three subjects (0 to 100), separated by spaces: ');
  final marks = stdin.readLineSync()!.split(' ').map(double.parse).toList();

  if (marks.length != 3 || marks.any((mark) => mark < 0 || mark > 100)) {
    print('Please enter exactly three marks, each from 0 to 100.');
    return;
  }

  final total = marks[0] + marks[1] + marks[2];
  final percentage = total / 3;
  print('Student: $name');
  print('Total marks: $total / 300');
  print('Percentage: ${percentage.toStringAsFixed(2)}%');
  print(percentage >= 40 ? 'Result: Pass' : 'Result: Fail');
}
