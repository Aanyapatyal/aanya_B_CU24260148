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

class _ExampleScreenState extends State<ExampleScreen> {  final _height = TextEditingController();
  final _weight = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('BMI Calculator')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _height, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Height in metres (e.g. 1.70)', border: OutlineInputBorder())), TextField(controller: _weight, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Weight in kilograms', border: OutlineInputBorder())), ElevatedButton(onPressed: () { final h = double.tryParse(_height.text); final w = double.tryParse(_weight.text); setState(() => _result = h == null || w == null || h <= 0 ? 'Enter valid height and weight' : 'BMI: ${(w / (h * h)).toStringAsFixed(1)}'); }, child: const Text('Calculate BMI')), Text(_result, style: const TextStyle(fontSize: 22))]))),
      );
}
