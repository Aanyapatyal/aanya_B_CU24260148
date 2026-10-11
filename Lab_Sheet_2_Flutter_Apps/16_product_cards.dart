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
      appBar: AppBar(title: const Text('Products')),
      body: ListView(padding: const EdgeInsets.all(12), children: [for (final product in ['Notebook', 'Backpack', 'Water Bottle']) Card(child: ListTile(leading: const Icon(Icons.shopping_bag, color: Colors.indigo, size: 36), title: Text(product), subtitle: const Text('A useful everyday item'), trailing: const Text('₹199')))]),
    );
  }
}
