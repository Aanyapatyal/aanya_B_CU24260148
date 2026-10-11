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
      appBar: AppBar(title: const Text('Three Buttons')),
      body: Center(child: Wrap(spacing: 12, children: [ElevatedButton(onPressed: () {}, child: const Text('Submit')), OutlinedButton(onPressed: () {}, child: const Text('Reset')), TextButton(onPressed: () {}, child: const Text('Cancel'))])),
    );
  }
}
