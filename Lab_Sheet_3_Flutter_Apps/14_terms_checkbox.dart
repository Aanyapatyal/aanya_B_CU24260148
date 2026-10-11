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

class _ExampleScreenState extends State<ExampleScreen> {  bool _agreed = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Terms and Conditions')),
        body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [CheckboxListTile(value: _agreed, onChanged: (value) => setState(() => _agreed = value ?? false), title: const Text('I agree to the terms and conditions')), Text(_agreed ? 'Thank you for agreeing.' : 'Please select the checkbox.')])),
      );
}
