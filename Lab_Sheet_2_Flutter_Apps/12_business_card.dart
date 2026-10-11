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
      appBar: AppBar(title: const Text('Business Card')),
      body: Center(child: Card(child: Padding(padding: const EdgeInsets.all(22), child: Column(mainAxisSize: MainAxisSize.min, children: [ClipOval(child: Image.network('https://picsum.photos/200', width: 90, height: 90, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const Icon(Icons.person, size: 90))), const Text('Your Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), const ListTile(leading: Icon(Icons.phone), title: Text('+91 00000 00000')), const ListTile(leading: Icon(Icons.email), title: Text('you@example.com'))])))),
    );
  }
}
