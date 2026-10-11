import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const StudentAppHome(),
      );
}

class StudentAppHome extends StatefulWidget { const StudentAppHome({super.key}); @override State<StudentAppHome> createState() => _StudentAppHomeState(); }
class _StudentAppHomeState extends State<StudentAppHome> {
 int index = 0; final labels = const ['Home','Profile','Attendance','Result']; final icons = const [Icons.home,Icons.person,Icons.fact_check,Icons.grade];
 @override Widget build(BuildContext context) { final details = ['Welcome to Student Management', 'Name: Your Name\nCourse: Your Course\nSemester: Your Semester', 'Attendance: 92%', 'Result: Pass']; return Scaffold(appBar: AppBar(title: Text(labels[index])), body: Center(child: Card(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [Icon(icons[index], size: 60), Text(details[index], textAlign: TextAlign.center, style: const TextStyle(fontSize: 20))])))), bottomNavigationBar: BottomNavigationBar(currentIndex: index, type: BottomNavigationBarType.fixed, onTap: (i) => setState(() => index = i), items: [for (var i=0; i<labels.length; i++) BottomNavigationBarItem(icon: Icon(icons[i]), label: labels[i])])); }
}

