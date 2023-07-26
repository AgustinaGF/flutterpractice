import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/color_picker.dart';
import 'package:practiceflutter/routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

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
      appBar: AppBar(
        backgroundColor: _color,
      ),
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
            onTap: () async {
              // final route = MaterialPageRoute<Color>(
              //   builder: (_) => const ColorPicker(),
              // );
              // final result = await Navigator.push(
              //   context,
              //   route,
              // );
              final result = await Navigator.pushNamed(
                context,
                Routes.colorPicker,
              ) as Color?;
              if (result != null) {
                _color = result;
                // esto va a actualizar la vista
                setState(() {});
              }
            },
            title: const Text('Pick color'),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
          ),
        ],
      ),
    );
  }
}
