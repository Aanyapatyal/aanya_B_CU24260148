import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const NavigationScreen(),
      );
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}
class _NavigationScreenState extends State<NavigationScreen> {
  int selected = 0;
  final labels = const ['Home', 'Profile', 'Settings'];
  final icons = const [Icons.home, Icons.person, Icons.settings];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(labels[selected])),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [Icon(icons[selected], size: 64), Text('${labels[selected]} screen')])),
    bottomNavigationBar: BottomNavigationBar(currentIndex: selected, onTap: (i) => setState(() => selected = i), items: [for (var i=0; i<labels.length; i++) BottomNavigationBarItem(icon: Icon(icons[i]), label: labels[i])]),
  );
}

