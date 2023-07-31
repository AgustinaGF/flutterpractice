import 'package:flutter/material.dart';

Future<void> ShowBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    //esto evita el error de overflow
    isScrollControlled: true,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.photo),
            title: const Text('Photos'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.video_camera_back_rounded),
            title: const Text('Video'),
          )
        ],
      ),
    ),
  );
}
