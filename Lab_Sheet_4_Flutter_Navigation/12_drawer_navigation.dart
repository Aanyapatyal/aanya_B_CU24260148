import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const DrawerHome(),
      );
}

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Home')),
    drawer: Drawer(child: ListView(padding: EdgeInsets.zero, children: [const DrawerHeader(child: Text('Navigation Menu', style: TextStyle(fontSize: 22))), for (final item in ['Home', 'Profile', 'About', 'Settings']) ListTile(leading: Icon(switch(item) {'Home' => Icons.home, 'Profile' => Icons.person, 'About' => Icons.info, _ => Icons.settings}), title: Text(item), onTap: () { Navigator.pop(context); if (item != 'Home') Navigator.push(context, MaterialPageRoute(builder: (_) => MenuPage(title: item))); })])),
    body: const Center(child: Text('Open the drawer to navigate')),
  );
}
class MenuPage extends StatelessWidget {
  final String title;
  const MenuPage({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(title)), body: Center(child: Text('$title screen')));
}

