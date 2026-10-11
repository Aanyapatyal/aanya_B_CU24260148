import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab Example',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: const _LoginBody(),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody();
  @override
  Widget build(BuildContext context) => Center(child: SingleChildScrollView(padding: const EdgeInsets.all(24), child: Column(children: [const Icon(Icons.lock, size: 72, color: Colors.indigo), const Text('Welcome Back', style: TextStyle(fontSize: 26)), const SizedBox(height: 20), const TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(), prefixIcon: Icon(Icons.email))), const SizedBox(height: 12), const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock))), const SizedBox(height: 16), SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Login')))])));
}
