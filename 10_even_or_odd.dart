import 'dart:io';

void main() {
  stdout.write('Enter an integer: ');
  final number = int.parse(stdin.readLineSync()!);
  print(number % 2 == 0 ? 'Even' : 'Odd');
}
