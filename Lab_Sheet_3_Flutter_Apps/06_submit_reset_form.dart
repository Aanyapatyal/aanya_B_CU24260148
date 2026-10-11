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
  final _email = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Submit and Reset')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _name, decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder())), const SizedBox(height: 10), TextField(controller: _email, decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())), const SizedBox(height: 12), Row(children: [ElevatedButton(onPressed: () => setState(() => _message = 'Form submitted for ${_name.text}'), child: const Text('Submit')), const SizedBox(width: 10), OutlinedButton(onPressed: () { _name.clear(); _email.clear(); setState(() => _message = ''); }, child: const Text('Reset'))]), Text(_message)]))),
      );
}
