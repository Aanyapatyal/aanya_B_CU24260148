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
      appBar: AppBar(title: const Text('Student Dashboard')),
      body: ListView(padding: const EdgeInsets.all(16), children: [const CircleAvatar(radius: 42, child: Icon(Icons.person, size: 48)), const Center(child: Text('Welcome, Student!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))), const SizedBox(height: 12), for (final item in ['My Courses', 'Timetable', 'Attendance', 'Results']) Card(child: ListTile(leading: const Icon(Icons.dashboard), title: Text(item), trailing: const Icon(Icons.arrow_forward_ios, size: 16), onTap: () {}))]),
    );
  }
}
