import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DetailScreen())), child: const Text('Open detail'))]))),
      );
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Detail')), body: const Center(child: Text('Use the back arrow to return home.')));
}

