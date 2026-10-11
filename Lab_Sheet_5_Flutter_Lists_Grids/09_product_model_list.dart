import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
    home: const ExampleScreen(),
  );
}
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Products')), body: ListView.builder(itemCount: products.length, itemBuilder: (context, index) { final product = products[index]; return ListTile(leading: const Icon(Icons.shopping_bag), title: Text(product.name), trailing: Text('₹${product.price.toStringAsFixed(2)}')); }));
}

class Product {
  final String name;
  final double price;
  const Product(this.name, this.price);
}
const products = [Product('Notebook', 120), Product('Pen set', 45), Product('Backpack', 899), Product('Water bottle', 250)];

