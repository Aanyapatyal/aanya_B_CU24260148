import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const ExampleScreen(),
      );
}

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {  final _name = TextEditingController();
  String _shownName = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Student Name')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [const TextField(controller: _name, decoration: InputDecoration(labelText: 'Student name', border: OutlineInputBorder())), const SizedBox(height: 12), ElevatedButton(onPressed: () => setState(() => _shownName = _name.text), child: const Text('Show name')), const SizedBox(height: 12), Text('Name: $_shownName', style: const TextStyle(fontSize: 20))]))),
      );
}
