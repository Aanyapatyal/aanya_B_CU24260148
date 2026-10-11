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
      appBar: AppBar(title: const Text('Calculator Interface')),
      body: const _CalculatorBody(),
    );
  }
}

class _CalculatorBody extends StatelessWidget {
  const _CalculatorBody();
  @override
  Widget build(BuildContext context) {
    const keys = ['7','8','9','÷','4','5','6','×','1','2','3','−','C','0','=','+'];
    return Column(children: [Container(width: double.infinity, height: 150, alignment: Alignment.bottomRight, padding: const EdgeInsets.all(24), child: const Text('0', style: TextStyle(fontSize: 48))), Expanded(child: GridView.count(crossAxisCount: 4, children: [for (final key in keys) Padding(padding: const EdgeInsets.all(5), child: ElevatedButton(onPressed: () {}, child: Text(key, style: const TextStyle(fontSize: 22))))]))]);
  }
}
