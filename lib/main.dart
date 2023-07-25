import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/login_page.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap(BuildContext context) {
    final faker = Faker();
    final email = faker.internet.email();
    final route = MaterialPageRoute(
      builder: (_) => LoginPage(
        email: email,
      ),
    );
    Navigator.push(context, route);
    // Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        ListTile(
          onTap: () => _onTap(context),
          title: const Text('Go to login'),
          trailing: const Icon(Icons.arrow_right_alt_outlined),
        )
      ]),
    );
  }
}
