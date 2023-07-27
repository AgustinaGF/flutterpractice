import 'package:flutter/material.dart';
import 'package:practiceflutter/dialogs/confirm_dialog.dart';
import 'package:practiceflutter/dialogs/cupertino_dialog.dart';

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
          ),
          ListTile(
            title: const Text('show confirm dialog'),
            onTap: () async {
              final isOk = await showConfirmDialog(
                context,
                title: 'Are you sure?',
              );
            },
          ),
          ListTile(
            title: const Text('show cupertinoDialog dialog'),
            onTap: () async {
              showDialogWithCupertinoStyle(context,
                  title: 'Hi', content: 'How are you');
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
