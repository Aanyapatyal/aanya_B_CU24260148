import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab Example',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Icons')),
      body: const Center(child: Wrap(spacing: 28, runSpacing: 28, children: [Icon(Icons.home, size: 48), Icon(Icons.favorite, size: 48, color: Colors.red), Icon(Icons.star, size: 48, color: Colors.amber), Icon(Icons.person, size: 48, color: Colors.indigo)])),
    );
  }
}
