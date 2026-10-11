import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const ShopNavigation(),
      );
}

class ShopNavigation extends StatefulWidget { const ShopNavigation({super.key}); @override State<ShopNavigation> createState() => _ShopNavigationState(); }
class _ShopNavigationState extends State<ShopNavigation> {
 int index = 0; final labels = const ['Home','Products','Cart','Profile']; final icons = const [Icons.home,Icons.shopping_bag,Icons.shopping_cart,Icons.person];
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(labels[index])), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [Icon(icons[index], size: 64), Text('${labels[index]} screen')])), bottomNavigationBar: BottomNavigationBar(currentIndex: index, type: BottomNavigationBarType.fixed, onTap: (i) => setState(() => index = i), items: [for (var i=0; i<labels.length; i++) BottomNavigationBarItem(icon: Icon(icons[i]), label: labels[i])]));
}

