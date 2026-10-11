import 'package:flutter/material.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        home: const LoginPage(),
      );
}

class LoginPage extends StatelessWidget { const LoginPage({super.key}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Login')), body: Center(child: ElevatedButton(onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const UserHome())), child: const Text('Login')))); }
class UserHome extends StatelessWidget { const UserHome({super.key}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Home'), actions: [IconButton(icon: const Icon(Icons.person), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const UserProfile())))]), body: Center(child: ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const UserProfile())), child: const Text('Open Profile')))); }
class UserProfile extends StatelessWidget { const UserProfile({super.key}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Profile')), body: const Center(child: Text('Student profile'))); }

