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

class _ExampleScreenState extends State<ExampleScreen> {  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  String? _gender;
  String? _course;
  String _message = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Registration Form')),
        body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [TextField(controller: _name, decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder())), TextField(controller: _email, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())), TextField(controller: _password, obscureText: true, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder())), const Text('Gender'), for (final g in ['Female', 'Male', 'Prefer not to say']) RadioListTile<String>(dense: true, title: Text(g), value: g, groupValue: _gender, onChanged: (v) => setState(() => _gender = v)), DropdownButton<String>(value: _course, hint: const Text('Choose course'), items: ['BCA', 'BSc', 'BCom'].map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(), onChanged: (v) => setState(() => _course = v)), ElevatedButton(onPressed: () => setState(() => _message = 'Registration submitted for ${_name.text}'), child: const Text('Register')), Text(_message)]))),
      );
}
