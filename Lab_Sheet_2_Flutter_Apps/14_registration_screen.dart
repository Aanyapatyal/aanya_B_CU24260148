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
      appBar: AppBar(title: const Text('Registration')),
      body: const _RegistrationBody(),
    );
  }
}

class _RegistrationBody extends StatelessWidget {
  const _RegistrationBody();
  @override
  Widget build(BuildContext context) => Center(child: SingleChildScrollView(padding: const EdgeInsets.all(24), child: Column(children: [const Icon(Icons.person_add, size: 64, color: Colors.indigo), const Text('Create Account', style: TextStyle(fontSize: 26)), const SizedBox(height: 20), const TextField(decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder(), prefixIcon: Icon(Icons.person))), const SizedBox(height: 12), const TextField(keyboardType: TextInputType.emailAddress, decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(), prefixIcon: Icon(Icons.email))), const SizedBox(height: 12), const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock))), const SizedBox(height: 16), SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Register')))])));
}
