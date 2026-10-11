import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const ExampleScreen(),
      );
}

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {  final _username = TextEditingController();
  final _password = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Login Form')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _username, decoration: const InputDecoration(labelText: 'Username', border: OutlineInputBorder(), prefixIcon: Icon(Icons.person))), const SizedBox(height: 10), TextField(controller: _password, obscureText: true, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock))), const SizedBox(height: 12), Row(children: [ElevatedButton(onPressed: () => setState(() => _message = 'Welcome, ${_username.text}'), child: const Text('Login')), const SizedBox(width: 10), OutlinedButton(onPressed: () { _username.clear(); _password.clear(); setState(() => _message = ''); }, child: const Text('Reset'))]), Text(_message)]))),
      );
}
