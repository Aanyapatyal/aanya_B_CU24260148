import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  final first = double.parse(stdin.readLineSync()!);
  stdout.write('Enter the second number: ');
  final second = double.parse(stdin.readLineSync()!);

  print('Sum: ${first + second}');
  print('Difference: ${first - second}');
  print('Product: ${first * second}');
  if (second == 0) {
    print('Quotient: cannot divide by zero');
  } else {
    print('Quotient: ${first / second}');
  }
}
