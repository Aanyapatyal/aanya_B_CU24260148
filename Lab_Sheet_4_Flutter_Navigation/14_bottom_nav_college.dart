import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const CollegeNavigation(),
      );
}

class CollegeNavigation extends StatefulWidget {
  const CollegeNavigation({super.key});
  @override
  State<CollegeNavigation> createState() => _CollegeNavigationState();
}
class _CollegeNavigationState extends State<CollegeNavigation> {
  int selected = 0;
  final labels = const ['Home', 'Courses', 'Contact'];
  final icons = const [Icons.home, Icons.menu_book, Icons.contact_phone];
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(labels[selected])), body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [Icon(icons[selected], size: 60), Text('${labels[selected]} screen')])), bottomNavigationBar: BottomNavigationBar(currentIndex: selected, onTap: (i) => setState(() => selected = i), items: [for (var i=0; i<labels.length; i++) BottomNavigationBarItem(icon: Icon(icons[i]), label: labels[i])]));
}

