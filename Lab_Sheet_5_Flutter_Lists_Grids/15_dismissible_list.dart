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
class _ExampleScreenState extends State<ExampleScreen> {  final items = ['Swipe this item', 'Or swipe this one', 'Another item'];

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Swipe to Remove')), body: ListView.builder(itemCount: items.length, itemBuilder: (context, index) { final item = items[index]; return Dismissible(key: ValueKey(item), background: Container(color: Colors.red, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 20), child: const Icon(Icons.delete, color: Colors.white)), secondaryBackground: Container(color: Colors.red, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 20), child: const Icon(Icons.delete, color: Colors.white)), onDismissed: (_) => setState(() => items.remove(item)), child: ListTile(title: Text(item))); }));
}

