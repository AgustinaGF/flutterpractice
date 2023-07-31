import 'package:flutter/material.dart';

Future<void> showCustomDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => const _CustomDialog(),
  );
}

class _CustomDialog extends StatelessWidget {
  const _CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Container(
          child: Column(
        children: [
          Text('Congratulations'),
        ],
      )),
    );
  }
}
