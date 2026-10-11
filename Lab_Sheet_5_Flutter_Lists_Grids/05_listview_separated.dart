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
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Separated List')), body: ListView.separated(itemCount: items.length, itemBuilder: (context, index) => ListTile(title: Text(items[index])), separatorBuilder: (context, index) => const Divider(height: 1, thickness: 1)));
}
const items = ['First item', 'Second item', 'Third item', 'Fourth item', 'Fifth item'];

