import 'dart:io';

void main() {
  stdout.write('Enter an integer: ');
  final number = int.parse(stdin.readLineSync()!);
  var remaining = number.abs();
  var reversed = 0;

  while (remaining > 0) {
    final digit = remaining % 10;
    reversed = reversed * 10 + digit;
    remaining ~/= 10;
  }
  if (number < 0) reversed = -reversed;
  print('Reversed number: $reversed');
}
