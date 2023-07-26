import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/color_picker.dart';
import 'package:practiceflutter/pages/login_page.dart';
import 'package:practiceflutter/routes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap(BuildContext context) {
    final faker = Faker();
    final email = faker.internet.email();

    Navigator.pushNamed(
      context,
      Routes.login,
      arguments: email,
    );
    // final route = MaterialPageRoute(
    //   builder: (_) => LoginPage(
    //     email: email,
    //   ),
    // );
    // Navigator.push(context, route);
    // Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            onTap: () => _onTap(context),
            title: const Text('Go to login'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, Routes.counter);
            },
            title: const Text('Go to counter'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
          ListTile(
            onTap: () {
              final route = MaterialPageRoute(
                builder: (_) => const ColorPicker(),
              );
              Navigator.push(context, route);
            },
            title: const Text('Pick color'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
        ],
      ),
    );
  }
}
