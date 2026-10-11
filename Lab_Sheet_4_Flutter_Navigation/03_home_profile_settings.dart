import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const InfoScreen(title: 'Profile'))), child: const Text('Profile')), ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const InfoScreen(title: 'Settings'))), child: const Text('Settings'))]))),
      );
}

class InfoScreen extends StatelessWidget {
  final String title;
  const InfoScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(title)), body: Center(child: Text('$title screen')));
}

