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

class _ExampleScreenState extends State<ExampleScreen> {  String? _department;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Select Department')),
        body: Center(child: DropdownButton<String>(value: _department, hint: const Text('Choose department'), items: [for (final d in ['Computer Science', 'Commerce', 'Arts']) DropdownMenuItem(value: d, child: Text(d))], onChanged: (value) => setState(() => _department = value))),
      );
}
