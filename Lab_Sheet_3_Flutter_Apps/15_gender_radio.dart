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

class _ExampleScreenState extends State<ExampleScreen> {  String? _gender;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Select Gender')),
        body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [for (final gender in ['Female', 'Male', 'Prefer not to say']) RadioListTile<String>(value: gender, groupValue: _gender, title: Text(gender), onChanged: (value) => setState(() => _gender = value)), Text('Selected: ${_gender ?? 'None'}')])),
      );
}
