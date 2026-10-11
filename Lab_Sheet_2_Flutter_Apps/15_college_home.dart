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
      appBar: AppBar(title: const Text('College Home')),
      body: ListView(padding: const EdgeInsets.all(16), children: [const Center(child: Icon(Icons.account_balance, size: 90, color: Colors.indigo)), const Center(child: Text('Your College Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))), for (final item in ['About Us', 'Courses', 'Admissions', 'Contact']) Card(child: ListTile(leading: const Icon(Icons.chevron_right), title: Text(item), onTap: () {}))]),
    );
  }
}
