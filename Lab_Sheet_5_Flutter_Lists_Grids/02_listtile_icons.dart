import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
    home: const ExampleScreen(),
  );
}
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('ListTile Example')), body: ListView(children: [for (final item in const [('Home', 'Go to home'), ('Profile', 'View your profile'), ('Settings', 'Change preferences')]) ListTile(leading: Icon(item.$1 == 'Home' ? Icons.home : item.$1 == 'Profile' ? Icons.person : Icons.settings), title: Text(item.$1), subtitle: Text(item.$2))]));
}

