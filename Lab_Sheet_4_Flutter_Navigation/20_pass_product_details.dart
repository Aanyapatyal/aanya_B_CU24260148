import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Products')), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [ListTile(title: const Text('Notebook'), subtitle: const Text('₹120'), trailing: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProductDetail(name: 'Notebook', price: 120))), child: const Text('Details')) )]))),
      );
}

class ProductDetail extends StatelessWidget { final String name; final double price; const ProductDetail({super.key, required this.name, required this.price}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Product Detail')), body: Center(child: Text('Product: $name\nPrice: ₹$price', textAlign: TextAlign.center))); }

