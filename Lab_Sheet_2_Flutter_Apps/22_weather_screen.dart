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
      appBar: AppBar(title: const Text('Weather')),
      body: Center(child: Card(child: Padding(padding: const EdgeInsets.all(28), child: Column(mainAxisSize: MainAxisSize.min, children: [const Text('Delhi', style: TextStyle(fontSize: 26)), const Icon(Icons.wb_sunny, size: 90, color: Colors.orange), const Text('28°C', style: TextStyle(fontSize: 48)), const Text('Sunny'), const SizedBox(height: 12), const Text('Humidity 45%  •  Wind 10 km/h')])))),
    );
  }
}
