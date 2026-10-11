import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const CollegeDrawer(),
      );
}

class CollegeDrawer extends StatelessWidget { const CollegeDrawer({super.key}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('College App')), drawer: Drawer(child: ListView(children: [const DrawerHeader(child: Text('College Menu')), for (final name in ['Home','Courses','Faculty','Contact']) ListTile(title: Text(name), leading: const Icon(Icons.chevron_right), onTap: () { Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (_) => CollegePage(title: name))); })])), body: const Center(child: Text('Welcome to the college app'))); }
class CollegePage extends StatelessWidget { final String title; const CollegePage({super.key, required this.title}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(title)), body: Center(child: Text('$title screen'))); }

