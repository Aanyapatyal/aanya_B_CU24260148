import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  final number = int.parse(stdin.readLineSync()!);
  for (var multiplier = 1; multiplier <= 10; multiplier++) {
    print('$number x $multiplier = ${number * multiplier}');
  }
}
