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

class _ExampleScreenState extends State<ExampleScreen> {  String? _course;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Select Course')),
        body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [for (final course in ['BCA', 'BSc', 'BCom']) RadioListTile<String>(value: course, groupValue: _course, title: Text(course), onChanged: (value) => setState(() => _course = value)), Text('Selected: ${_course ?? 'None'}')])),
      );
}
