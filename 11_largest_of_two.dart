import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  final first = double.parse(stdin.readLineSync()!);
  stdout.write('Enter the second number: ');
  final second = double.parse(stdin.readLineSync()!);

  if (first > second) {
    print('$first is larger.');
  } else if (second > first) {
    print('$second is larger.');
  } else {
    print('Both numbers are equal.');
  }
}
