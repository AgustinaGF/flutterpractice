import 'package:flutter/material.dart';
import 'package:practiceflutter/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.email});

  final String email;
  @override
  Widget build(BuildContext context) {
    // final modalRoute = ModalRoute.of(context)!;
    // final arguments = modalRoute.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.arrow_back,
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          ),
      body: Center(
        child: MaterialButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const ProfilePage(),
                settings: const RouteSettings(name: '/profile'),
              );
              Navigator.push(context, route);
            },
            child: Text('Login Page $email')),
      ),
    );
  }
}
