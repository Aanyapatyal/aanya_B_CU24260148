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

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Counter')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [Text('$_count', style: const TextStyle(fontSize: 48)), ElevatedButton(onPressed: () => setState(() => _count++), child: const Text('Increment'))])));
}

