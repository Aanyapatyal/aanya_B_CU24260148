import 'dart:io';

void main() {
  const pi = 3.14159;
  stdout.write('Enter circle radius: ');
  final radius = double.parse(stdin.readLineSync()!);
  print('Area of circle: ${pi * radius * radius}');
}
