import 'dart:io';

void main() {
  stdout.write('Enter rectangle length: ');
  final length = double.parse(stdin.readLineSync()!);
  stdout.write('Enter rectangle width: ');
  final width = double.parse(stdin.readLineSync()!);

  print('Area: ${length * width}');
  print('Perimeter: ${2 * (length + width)}');
}
