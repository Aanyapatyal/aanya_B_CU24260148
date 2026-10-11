import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DestinationScreen())), child: const Text('Push new screen'))]))),
      );
}

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Destination')), body: const Center(child: Text('Opened with Navigator.push()')));
}

