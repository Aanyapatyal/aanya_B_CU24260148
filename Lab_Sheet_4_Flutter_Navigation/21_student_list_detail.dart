import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: Scaffold(appBar: AppBar(title: const Text('Student List')), body: ListView(children: [for (final student in const [{'name':'Aanya','course':'BCA','semester':'2'}, {'name':'Riya','course':'BSc','semester':'4'}, {'name':'Kabir','course':'BCom','semester':'1'}]) ListTile(title: Text(student['name']!), subtitle: Text(student['course']!), trailing: const Icon(Icons.arrow_forward), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StudentDetail(student: student))))])),
      );
}

class StudentDetail extends StatelessWidget { final Map<String, String> student; const StudentDetail({super.key, required this.student}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Details')), body: Center(child: Text('Name: ${student['name']}\nCourse: ${student['course']}\nSemester: ${student['semester']}', textAlign: TextAlign.center))); }

