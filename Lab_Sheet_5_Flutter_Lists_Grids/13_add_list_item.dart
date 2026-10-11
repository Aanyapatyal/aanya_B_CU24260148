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
class _ExampleScreenState extends State<ExampleScreen> {  final controller = TextEditingController();
  final items = <String>[];
  void addItem() { final text = controller.text.trim(); if (text.isEmpty) return; setState(() { items.add(text); controller.clear(); }); }

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Add List Item')), body: Column(children: [Padding(padding: const EdgeInsets.all(12), child: Row(children: [Expanded(child: TextField(controller: controller, decoration: const InputDecoration(labelText: 'New item', border: OutlineInputBorder()), onSubmitted: (_) => addItem())), IconButton(onPressed: addItem, icon: const Icon(Icons.add))])), Expanded(child: ListView.builder(itemCount: items.length, itemBuilder: (context, index) => ListTile(title: Text(items[index]))))]));
}

