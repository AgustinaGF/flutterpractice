import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.popUntil(
              context,
              (route) {
                final name = route.settings.name;
                //esto hace que no se elimine esta ruta
                return name == '/';
              },
            );
          },
          child: const Text('LOG OUT'),
        ),
      ),
    );
  }
}
