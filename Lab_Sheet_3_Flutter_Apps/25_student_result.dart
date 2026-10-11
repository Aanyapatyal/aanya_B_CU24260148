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
  final _marks = List.generate(3, (_) => TextEditingController());
  String _result = '';
  void _calculate() { final values = _marks.map((c) => double.tryParse(c.text)).toList(); setState(() { if (values.any((v) => v == null || v < 0 || v > 100)) { _result = 'Enter three valid marks from 0 to 100'; } else { final total = values.fold<double>(0, (sum, v) => sum + v!); final percentage = total / 3; _result = '${_name.text}\nTotal: $total / 300\nPercentage: ${percentage.toStringAsFixed(2)}%\n${percentage >= 40 ? 'Pass' : 'Fail'}'; } }); }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Student Result')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _name, decoration: const InputDecoration(labelText: 'Student name', border: OutlineInputBorder())), for (var i = 0; i < 3; i++) TextField(controller: _marks[i], keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Subject ${i + 1} marks (out of 100)', border: const OutlineInputBorder())), ElevatedButton(onPressed: _calculate, child: const Text('Calculate result')), Text(_result, style: const TextStyle(fontSize: 18))]))),
      );
}
