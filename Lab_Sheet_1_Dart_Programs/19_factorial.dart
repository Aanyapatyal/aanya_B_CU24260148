import 'dart:io';

void main() {
  stdout.write('Enter a non-negative integer: ');
  final number = int.parse(stdin.readLineSync()!);
  if (number < 0) {
    print('Factorial is not defined for negative numbers.');
    return;
  }

  var factorial = 1;
  for (var value = 1; value <= number; value++) {
    factorial *= value;
  }
  print('$number! = $factorial');
}
