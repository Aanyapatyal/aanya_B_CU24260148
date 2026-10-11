import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Home')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen())), child: const Text('Open profile'))]))),
      );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Profile')), body: const Center(child: Text('Student profile')));
}

