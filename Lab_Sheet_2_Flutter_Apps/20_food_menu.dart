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
      appBar: AppBar(title: const Text('Food Menu')),
      body: ListView(children: [for (final food in ['Veg Burger', 'Pasta', 'Fruit Bowl']) Card(margin: const EdgeInsets.all(10), child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [Image.network('https://picsum.photos/seed/$food/500/220', height: 150, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const SizedBox(height: 100, child: Icon(Icons.restaurant, size: 60))), ListTile(title: Text(food), subtitle: const Text('Fresh and delicious'), trailing: const Icon(Icons.favorite_border)), Padding(padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12), child: ElevatedButton(onPressed: () {}, child: const Text('Order')))]))]),
    );
  }
}
