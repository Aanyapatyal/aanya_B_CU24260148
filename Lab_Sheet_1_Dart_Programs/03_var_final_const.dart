void main() {
  var city = 'Delhi'; // Dart infers String; this variable can be reassigned.
  city = 'Jaipur';
  final currentTime = DateTime.now(); // Set once, when the program runs.
  const pi = 3.14159; // Compile-time constant.

  print('City: $city');
  print('Program started at: $currentTime');
  print('Pi: $pi');
}
