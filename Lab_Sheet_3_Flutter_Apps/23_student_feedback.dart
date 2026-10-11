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
  final _feedback = TextEditingController();
  int _rating = 5;
  String _message = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Student Feedback')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _name, decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder())), const SizedBox(height: 10), const Text('Rating'), DropdownButton<int>(value: _rating, items: [for (var i = 1; i <= 5; i++) DropdownMenuItem(value: i, child: Text('$i star${i == 1 ? '' : 's'}'))], onChanged: (v) => setState(() => _rating = v ?? 5)), TextField(controller: _feedback, maxLines: 4, decoration: const InputDecoration(labelText: 'Your feedback', border: OutlineInputBorder())), ElevatedButton(onPressed: () => setState(() => _message = 'Thank you, ${_name.text}! Rating: $_rating/5'), child: const Text('Submit')), Text(_message)]))),
      );
}
