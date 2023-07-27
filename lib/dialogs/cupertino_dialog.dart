import 'package:flutter/cupertino.dart';

Future<void> showDialogWithCupertinoStyle(
  BuildContext context, {
  String title = '',
  String content = '',
}) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('ok'),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('bad'),
        )
      ],
    ),
  );
}
