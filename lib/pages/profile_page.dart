import 'package:flutter/material.dart';

import '../routes.dart';

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
            // Navigator.popUntil(
            //   context,
            //   (route) {
            //     final name = route.settings.name;
            //     //esto hace que no se elimine esta ruta
            //     return name == Routes.initialRoute;
            //   },
            // );
            Navigator.pushNamed(
              context,
              Routes.initialRoute,
            );
          },
          child: const Text('LOG OUT'),
        ),
      ),
    );
  }
}
