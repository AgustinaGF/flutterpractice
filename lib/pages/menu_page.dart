import 'package:flutter/material.dart';
import 'package:practiceflutter/routes.dart';

class PageData {
  final String name;
  final String label;
  final Object? arguments;

  const PageData({this.arguments, required this.name, required this.label});
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  final _pages = const [
    PageData(
        name: Routes.login, label: 'Go to login', arguments: 'test@test.com'),
    PageData(
      name: Routes.counter,
      label: 'Go to counter',
    ),
    PageData(
      name: Routes.colorPicker,
      label: 'Pick color',
    ),
    PageData(
      name: Routes.dialogs,
      label: 'Go to dialogs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            final data = _pages[index];
            return ListTile(
              title: Text(data.label),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  data.name,
                  arguments: data.arguments,
                );
              },
            );
          },
          itemCount: _pages.length,
        ));
  }
}
