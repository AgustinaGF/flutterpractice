import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/login_page.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          onTap: () {
            final route = MaterialPageRoute(
              builder: (_) => const LoginPage(),
            );
            Navigator.push(context, route);
          },
          title: const Text('Go to login'),
          trailing: const Icon(Icons.arrow_right_alt_outlined),
        )
      ]),
    );
  }
}
