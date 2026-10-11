import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab Example',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: ListView(padding: const EdgeInsets.all(16), children: [Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(children: [const CircleAvatar(radius: 48, backgroundImage: NetworkImage('https://picsum.photos/200'), child: Icon(Icons.person)), const Text('Your Name', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), const Text('Your Course • Your College'), Row(mainAxisAlignment: MainAxisAlignment.center, children: const [Icon(Icons.location_on), Text('Your City')]), const SizedBox(height: 8), ElevatedButton(onPressed: () {}, child: const Text('Edit Profile'))]))), const Card(child: ListTile(leading: Icon(Icons.school), title: Text('Education'), subtitle: Text('Your college and course'))), const Card(child: ListTile(leading: Icon(Icons.email), title: Text('Contact'), subtitle: Text('you@example.com')))]),
    );
  }
}
