import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  final number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}
