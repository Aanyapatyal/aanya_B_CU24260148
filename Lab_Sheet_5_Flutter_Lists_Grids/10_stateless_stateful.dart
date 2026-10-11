import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
    home: const ExampleScreen(),
  );
}
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override State<ExampleScreen> createState() => _ExampleScreenState();
}
class _ExampleScreenState extends State<ExampleScreen> {  int _count = 0;

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Stateless and Stateful')), body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const StaticMessage(), const SizedBox(height: 12), Text('Stateful counter: $_count', style: const TextStyle(fontSize: 20)), ElevatedButton(onPressed: () => setState(() => _count++), child: const Text('Update state'))]));
}

class StaticMessage extends StatelessWidget {
  const StaticMessage({super.key});
  @override Widget build(BuildContext context) => const Text('This label is from a StatelessWidget.', style: TextStyle(fontSize: 18));
}

