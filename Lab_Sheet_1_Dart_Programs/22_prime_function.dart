import 'dart:io';

bool isPrime(int number) {
  if (number < 2) return false;
  for (var divisor = 2; divisor * divisor <= number; divisor++) {
    if (number % divisor == 0) return false;
  }
  return true;
}

void main() {
  stdout.write('Enter an integer: ');
  final number = int.parse(stdin.readLineSync()!);
  print(isPrime(number) ? '$number is prime.' : '$number is not prime.');
}
