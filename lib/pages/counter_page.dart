import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          body: const Center(
            child: Text('counter'),
          ),
        ),
        //sirve para ver cuando se apreta el boton de retroceso
        onWillPop: () {
          return Future.value(false);
        });
  }
}
