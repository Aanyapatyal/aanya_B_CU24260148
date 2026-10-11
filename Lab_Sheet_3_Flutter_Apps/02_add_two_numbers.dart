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

class _ExampleScreenState extends State<ExampleScreen> {  final _first = TextEditingController();
  final _second = TextEditingController();
  String _result = '';
  void _add() { final a = double.tryParse(_first.text); final b = double.tryParse(_second.text); setState(() => _result = a == null || b == null ? 'Enter two valid numbers' : '${a + b}'); }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Add Two Numbers')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [const TextField(controller: _first, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'First number', border: OutlineInputBorder())), const SizedBox(height: 10), const TextField(controller: _second, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Second number', border: OutlineInputBorder())), const SizedBox(height: 12), ElevatedButton(onPressed: _add, child: const Text('Add')), Text('Sum: $_result', style: const TextStyle(fontSize: 20))]))),
      );
}
