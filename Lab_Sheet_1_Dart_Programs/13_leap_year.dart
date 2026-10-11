import 'dart:io';

void main() {
  stdout.write('Enter a year: ');
  final year = int.parse(stdin.readLineSync()!);
  final isLeapYear = (year % 400 == 0) ||
      (year % 4 == 0 && year % 100 != 0);
  print(isLeapYear ? '$year is a leap year.' : '$year is not a leap year.');
}
