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
      appBar: AppBar(title: const Text('Text, Image and Icon')),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Welcome!', style: TextStyle(fontSize: 26)), Image.network('https://picsum.photos/300/180', width: 240, height: 150, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const Icon(Icons.image, size: 80)), const Icon(Icons.flutter_dash, size: 48, color: Colors.blue)])),
    );
  }
}
