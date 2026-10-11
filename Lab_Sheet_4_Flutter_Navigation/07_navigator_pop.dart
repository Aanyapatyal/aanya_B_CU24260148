import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('First Screen')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SecondScreen())), child: const Text('Go to second screen'))]))),
      );
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Second Screen')), body: Center(child: ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Return with Navigator.pop()'))));
}

