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
  void _calculate(String op) { final a = double.tryParse(_first.text); final b = double.tryParse(_second.text); setState(() { if (a == null || b == null) { _result = 'Enter two valid numbers'; } else if (op == '÷' && b == 0) { _result = 'Cannot divide by zero'; } else { final value = switch (op) { '+' => a + b, '−' => a - b, '×' => a * b, _ => a / b }; _result = 'Result: $value'; } }); }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Four Operations')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [const TextField(controller: _first, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'First number', border: OutlineInputBorder())), const SizedBox(height: 8), const TextField(controller: _second, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Second number', border: OutlineInputBorder())), const SizedBox(height: 12), Wrap(spacing: 8, children: [for (final op in ['+', '−', '×', '÷']) ElevatedButton(onPressed: () => _calculate(op), child: Text(op))]), Text(_result, style: const TextStyle(fontSize: 18))]))),
      );
}
