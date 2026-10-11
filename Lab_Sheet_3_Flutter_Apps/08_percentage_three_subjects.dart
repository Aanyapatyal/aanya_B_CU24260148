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

class _ExampleScreenState extends State<ExampleScreen> {  final _marks = List.generate(3, (_) => TextEditingController());
  String _result = '';
  void _calculate() { final values = _marks.map((c) => double.tryParse(c.text)).toList(); setState(() => _result = values.any((v) => v == null) ? 'Enter all three marks' : 'Percentage: ${(values.fold<double>(0, (sum, v) => sum + v!) / 3).toStringAsFixed(2)}%'); }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Percentage Calculator')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [for (var i = 0; i < 3; i++) TextField(controller: _marks[i], keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Subject ${i + 1} marks (out of 100)', border: const OutlineInputBorder())), ElevatedButton(onPressed: _calculate, child: const Text('Calculate percentage')), Text(_result, style: const TextStyle(fontSize: 20))]))),
      );
}
