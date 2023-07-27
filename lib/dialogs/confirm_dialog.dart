import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  String title = '',
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: const Text('Yes'),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No'),
        ),
      ],
    ),
  );
  return result ?? false;
}
