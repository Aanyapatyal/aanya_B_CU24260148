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
      appBar: AppBar(title: const Text('Student Profile')),
      body: Center(child: Card(elevation: 5, child: Container(width: 310, padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, children: [ClipOval(child: Image.network('https://picsum.photos/200', width: 100, height: 100, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 100))), const SizedBox(height: 12), const Text('Your Name', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), const Text('Student | Your Course'), const ListTile(leading: Icon(Icons.school), title: Text('Your College')), const Icon(Icons.star, color: Colors.amber)])))),
    );
  }
}
