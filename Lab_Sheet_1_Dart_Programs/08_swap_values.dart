void main() {
  int first = 10;
  int second = 20;
  print('Before swap: first = $first, second = $second');

  final temporary = first;
  first = second;
  second = temporary;

  print('After swap:  first = $first, second = $second');
}
