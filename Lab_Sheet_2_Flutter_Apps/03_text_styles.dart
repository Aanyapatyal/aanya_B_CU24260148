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
      appBar: AppBar(title: const Text('Text Styles')),
      body: const SingleChildScrollView(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Bold text', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)), Text('Italic text', style: TextStyle(fontStyle: FontStyle.italic)), Text('Large text', style: TextStyle(fontSize: 30)), SizedBox(width: 300, child: Text('This text is centered.', textAlign: TextAlign.center))]))),
    );
  }
}
