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
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (_) => const ProfilePage(),
                  );
                  Navigator.push(context, route);
                },
                child: Text('Login Page $email')),
            Expanded(
                child: ListView.builder(
              itemBuilder: (_, index) => Container(
                height: 70,
                color: Colors.primaries[index],
              ),
              itemCount: Colors.primaries.length,
            ))
          ],
        ),
      ),
    );
  }
}
