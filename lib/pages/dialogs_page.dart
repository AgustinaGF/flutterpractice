import 'package:flutter/material.dart';

class DialogsPages extends StatelessWidget {
  const DialogsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('show info dialog'),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => DialogContent(),
              );
            },
          )
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text('My dialog'),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        )
      ],
    );
  }
}
