import 'package:flutter/material.dart';

Future<void> ShowBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    //esto evita el error de overflow
    isScrollControlled: true,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(20, 10),
          topRight: Radius.elliptical(20, 10),
        ),
      ),
      constraints: BoxConstraints(
        maxWidth: 480,
      ),
      child: SafeArea(
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
    ),
  );
}
