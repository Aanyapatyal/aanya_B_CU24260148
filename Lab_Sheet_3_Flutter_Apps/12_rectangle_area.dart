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

class _ExampleScreenState extends State<ExampleScreen> {  final _length = TextEditingController();
  final _width = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Rectangle Area')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _length, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Length', border: OutlineInputBorder())), TextField(controller: _width, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Width', border: OutlineInputBorder())), ElevatedButton(onPressed: () { final l = double.tryParse(_length.text); final w = double.tryParse(_width.text); setState(() => _result = l == null || w == null ? 'Enter valid dimensions' : 'Area: ${l * w}'); }, child: const Text('Calculate area')), Text(_result, style: const TextStyle(fontSize: 22))]))),
      );
}
