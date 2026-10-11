import 'dart:io';

void main() {
  stdout.write('Enter three numbers separated by spaces: ');
  final values = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  final largest = values[0] > values[1]
      ? (values[0] > values[2] ? values[0] : values[2])
      : (values[1] > values[2] ? values[1] : values[2]);
  print('Largest number: $largest');
}
