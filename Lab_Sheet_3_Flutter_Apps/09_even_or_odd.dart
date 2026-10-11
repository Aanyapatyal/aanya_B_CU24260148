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

class _ExampleScreenState extends State<ExampleScreen> {  final _number = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Even or Odd')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _number, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Enter an integer', border: OutlineInputBorder())), ElevatedButton(onPressed: () { final n = int.tryParse(_number.text); setState(() => _result = n == null ? 'Enter a valid integer' : n % 2 == 0 ? 'Even' : 'Odd'); }, child: const Text('Check')), Text(_result, style: const TextStyle(fontSize: 22))]))),
      );
}
