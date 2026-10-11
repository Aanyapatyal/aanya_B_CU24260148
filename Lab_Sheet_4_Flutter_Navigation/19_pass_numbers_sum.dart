import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const NumberEntry(),
      );
}

class NumberEntry extends StatefulWidget { const NumberEntry({super.key}); @override State<NumberEntry> createState() => _NumberEntryState(); }
class _NumberEntryState extends State<NumberEntry> {
  final first = TextEditingController(); final second = TextEditingController();
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Enter Numbers')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: first, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')), TextField(controller: second, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')), ElevatedButton(onPressed: () { final a = double.tryParse(first.text); final b = double.tryParse(second.text); if (a == null || b == null) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Enter two valid numbers'))); return; } Navigator.push(context, MaterialPageRoute(builder: (_) => SumPage(sum: a + b))); }, child: const Text('Show sum'))])));
}
class SumPage extends StatelessWidget { final double sum; const SumPage({super.key, required this.sum}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Sum')), body: Center(child: Text('Sum: $sum'))); }

