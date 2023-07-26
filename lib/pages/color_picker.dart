import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            //el segundo parametro es el que va a retornar el color seleccionado
            Navigator.pop(context, Colors.primaries[index]);
          },
          child: Container(
            height: 70,
            color: Colors.primaries[index],
          ),
        ),
        itemCount: Colors.primaries.length,
      ),
    );
  }
}
