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

class _ExampleScreenState extends State<ExampleScreen> {  bool _accepted = false;
  bool _enabled = false;
  String? _gender;
  String? _course;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Selection Widgets')),
        body: ListView(padding: const EdgeInsets.all(16), children: [CheckboxListTile(title: const Text('Accept terms'), value: _accepted, onChanged: (v) => setState(() => _accepted = v ?? false)), const Divider(), for (final gender in ['Female', 'Male']) RadioListTile<String>(title: Text(gender), value: gender, groupValue: _gender, onChanged: (v) => setState(() => _gender = v)), DropdownButton<String>(value: _course, hint: const Text('Select course'), items: ['BCA', 'BSc', 'BCom'].map((v) => DropdownMenuItem(value: v, child: Text(v))).toList(), onChanged: (v) => setState(() => _course = v)), SwitchListTile(title: const Text('Notifications'), value: _enabled, onChanged: (v) => setState(() => _enabled = v))]),
      );
}
