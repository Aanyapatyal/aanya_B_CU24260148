import 'dart:io';

void main() {
  stdout.write('Enter temperature in Celsius: ');
  final celsius = double.parse(stdin.readLineSync()!);
  final fahrenheit = (celsius * 9 / 5) + 32;
  print('$celsius C = $fahrenheit F');
}
