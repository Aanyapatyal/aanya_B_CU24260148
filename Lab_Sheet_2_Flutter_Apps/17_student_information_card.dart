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
      appBar: AppBar(title: const Text('Student Information')),
      body: Center(child: Card(child: SizedBox(width: 340, child: Column(mainAxisSize: MainAxisSize.min, children: const [ListTile(title: Text('Student Name'), subtitle: Text('Your Name'), leading: Icon(Icons.person)), ListTile(title: Text('Roll Number'), subtitle: Text('001'), leading: Icon(Icons.badge)), ListTile(title: Text('Course'), subtitle: Text('Your Course'), leading: Icon(Icons.school)), ListTile(title: Text('Semester'), subtitle: Text('Your Semester'), leading: Icon(Icons.menu_book))])))),
    );
  }
}
