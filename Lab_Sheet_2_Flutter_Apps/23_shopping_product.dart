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
      appBar: AppBar(title: const Text('Product Details')),
      body: Center(child: Card(margin: const EdgeInsets.all(18), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [Image.network('https://picsum.photos/seed/shoes/700/450', height: 240, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const SizedBox(height: 180, child: Icon(Icons.shopping_bag, size: 90))), const ListTile(title: Text('Everyday Sneakers', style: TextStyle(fontSize: 22)), subtitle: Text('Comfortable everyday shoes'), trailing: Icon(Icons.favorite_border)), const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('₹1,499', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))), Padding(padding: const EdgeInsets.all(16), child: ElevatedButton(onPressed: () {}, child: const Text('Add to Cart')))]))),
    );
  }
}
