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

class _ExampleScreenState extends State<ExampleScreen> {  final _celsius = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Celsius to Fahrenheit')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _celsius, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Temperature in Celsius', border: OutlineInputBorder())), ElevatedButton(onPressed: () { final c = double.tryParse(_celsius.text); setState(() => _result = c == null ? 'Enter a valid temperature' : '${(c * 9 / 5 + 32).toStringAsFixed(1)} °F'); }, child: const Text('Convert')), Text(_result, style: const TextStyle(fontSize: 22))]))),
      );
}
