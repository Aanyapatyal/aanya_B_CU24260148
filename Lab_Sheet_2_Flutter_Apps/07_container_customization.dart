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
      appBar: AppBar(title: const Text('Customized Container')),
      body: Center(child: Container(height: 180, width: 280, padding: const EdgeInsets.all(24), margin: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.indigo.shade100, border: Border.all(color: Colors.indigo, width: 2), borderRadius: BorderRadius.circular(20)), child: const Center(child: Text('Padding, margin, size and decoration', textAlign: TextAlign.center)))),
    );
  }
}
