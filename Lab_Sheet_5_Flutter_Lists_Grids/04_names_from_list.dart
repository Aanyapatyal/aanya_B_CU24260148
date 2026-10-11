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
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Names')), body: ListView.builder(itemCount: names.length, itemBuilder: (context, index) => ListTile(title: Text(names[index]), leading: const Icon(Icons.person))));
}
const names = ['Aanya', 'Riya', 'Kabir', 'Meera', 'Aarav'];

