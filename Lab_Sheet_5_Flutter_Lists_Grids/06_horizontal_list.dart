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
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Horizontal List')), body: ListView(scrollDirection: Axis.horizontal, children: [for (var i = 1; i <= 10; i++) Container(width: 150, margin: const EdgeInsets.all(10), color: Colors.primaries[i % Colors.primaries.length].shade200, child: Center(child: Text('Item $i')))]));
}

