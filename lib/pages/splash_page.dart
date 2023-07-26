import 'package:flutter/material.dart';
import 'package:practiceflutter/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      //esto va a hacer que posterior a 2 segundos nos dirija a la page home
    ).then((_) => {Navigator.pushReplacementNamed(context, Routes.home)});
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
