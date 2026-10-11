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
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override State<ExampleScreen> createState() => _ExampleScreenState();
}
class _ExampleScreenState extends State<ExampleScreen> {  final items = ['Read a book', 'Attend class', 'Complete assignment'];

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Delete List Item')), body: ListView.builder(itemCount: items.length, itemBuilder: (context, index) => ListTile(title: Text(items[index]), trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.red), onPressed: () => setState(() => items.removeAt(index))))));
}

