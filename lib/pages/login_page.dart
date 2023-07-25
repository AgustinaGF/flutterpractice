import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // final String email;
  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context)!;
    final arguments = modalRoute.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Login Page $arguments'),
      ),
    );
  }
}
