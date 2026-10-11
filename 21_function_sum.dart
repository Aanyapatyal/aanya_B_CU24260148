import 'dart:io';

double add(double first, double second) => first + second;

void main() {
  stdout.write('Enter two numbers separated by a space: ');
  final values = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print('Sum: ${add(values[0], values[1])}');
}
