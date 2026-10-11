import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const DetailsEntry(),
      );
}

class DetailsEntry extends StatefulWidget { const DetailsEntry({super.key}); @override State<DetailsEntry> createState() => _DetailsEntryState(); }
class _DetailsEntryState extends State<DetailsEntry> {
  final name = TextEditingController(); final course = TextEditingController();
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Enter Details')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: name, decoration: const InputDecoration(labelText: 'Student name')), TextField(controller: course, decoration: const InputDecoration(labelText: 'Course')), ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPage(name: name.text, course: course.text))), child: const Text('Show details'))])));
}
class DetailsPage extends StatelessWidget { final String name, course; const DetailsPage({super.key, required this.name, required this.course}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Details')), body: Center(child: Text('Name: $name\nCourse: $course', textAlign: TextAlign.center))); }

