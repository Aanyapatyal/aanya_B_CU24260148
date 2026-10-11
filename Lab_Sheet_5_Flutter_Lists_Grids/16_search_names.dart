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
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override State<ExampleScreen> createState() => _ExampleScreenState();
}
class _ExampleScreenState extends State<ExampleScreen> {  final names = ['Aanya', 'Riya', 'Kabir', 'Meera', 'Aarav', 'Diya'];
  String query = '';
  List<String> get filteredNames => names.where((name) => name.toLowerCase().contains(query.toLowerCase())).toList();

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Search Names')), body: Column(children: [Padding(padding: const EdgeInsets.all(12), child: TextField(onChanged: (value) => setState(() => query = value), decoration: const InputDecoration(labelText: 'Search names', prefixIcon: Icon(Icons.search), border: OutlineInputBorder()))), Expanded(child: ListView.builder(itemCount: filteredNames.length, itemBuilder: (context, index) => ListTile(leading: const Icon(Icons.person), title: Text(filteredNames[index]))))]));
}

