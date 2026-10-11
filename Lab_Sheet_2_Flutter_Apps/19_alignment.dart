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
      appBar: AppBar(title: const Text('Center and Align')),
      body: Column(children: [Container(height: 110, color: Colors.blue.shade50, child: const Center(child: Text('Centered with Center'))), Expanded(child: Container(color: Colors.orange.shade50, child: const Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.all(16), child: Text('Bottom right with Align')))))]),
    );
  }
}
