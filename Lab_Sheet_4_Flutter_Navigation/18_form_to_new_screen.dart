import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const NameEntryScreen(),
      );
}

class NameEntryScreen extends StatefulWidget { const NameEntryScreen({super.key}); @override State<NameEntryScreen> createState() => _NameEntryScreenState(); }
class _NameEntryScreenState extends State<NameEntryScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Name Form')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: controller, decoration: const InputDecoration(labelText: 'Student name')), ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NameDetail(name: controller.text))), child: const Text('Continue'))])));
}
class NameDetail extends StatelessWidget { final String name; const NameDetail({super.key, required this.name}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student')), body: Center(child: Text('Submitted name: $name'))); }

