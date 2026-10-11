import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
    home: const ExampleScreen(),
  );
}
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Icon Grid')), body: GridView.count(crossAxisCount: 3, children: [for (final icon in const [Icons.home, Icons.person, Icons.star, Icons.favorite, Icons.settings, Icons.phone, Icons.email, Icons.school, Icons.map]) Card(child: Center(child: Icon(icon, size: 42, color: Colors.indigo)))]));
}

