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
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});
  @override State<ExampleScreen> createState() => _ExampleScreenState();
}
class _ExampleScreenState extends State<ExampleScreen> {  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final courseController = TextEditingController();
  final students = <Student>[];
  String query = '';
  List<Student> get filteredStudents => students.where((s) => s.name.toLowerCase().contains(query.toLowerCase())).toList();
  void addStudent() { final name = nameController.text.trim(); final roll = rollController.text.trim(); final course = courseController.text.trim(); if (name.isEmpty || roll.isEmpty || course.isEmpty) return; setState(() { students.add(Student(name, roll, course)); nameController.clear(); rollController.clear(); courseController.clear(); }); }

  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Records')), body: Column(children: [Padding(padding: const EdgeInsets.all(12), child: Column(children: [TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Student name')), TextField(controller: rollController, decoration: const InputDecoration(labelText: 'Roll number')), TextField(controller: courseController, decoration: const InputDecoration(labelText: 'Course')), ElevatedButton(onPressed: addStudent, child: const Text('Add student')), TextField(onChanged: (value) => setState(() => query = value), decoration: const InputDecoration(labelText: 'Search by name', prefixIcon: Icon(Icons.search))) ])), Expanded(child: ListView.builder(itemCount: filteredStudents.length, itemBuilder: (context, index) { final student = filteredStudents[index]; return ListTile(title: Text(student.name), subtitle: Text('Roll: ${student.roll} • ${student.course}'), trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () => setState(() => students.remove(student)))); }))]));
}

class Student {
  final String name;
  final String roll;
  final String course;
  const Student(this.name, this.roll, this.course);
}

