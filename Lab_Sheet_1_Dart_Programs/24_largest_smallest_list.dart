void main() {
  final numbers = [12, 5, 28, 3, 19, 41, 8];
  var largest = numbers[0];
  var smallest = numbers[0];

  for (final number in numbers) {
    if (number > largest) largest = number;
    if (number < smallest) smallest = number;
  }

  print('Numbers: $numbers');
  print('Largest: $largest');
  print('Smallest: $smallest');
}
