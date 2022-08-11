import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

final options = const['Megaman', 'Pokemon', 'Zelda', 'One piece'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview de Tipo 1"),
      ),
      body: ListView(
        children: [

          ...options.map(
            (cosas) => ListTile(
              title: Text(cosas),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList(),




/*
            Divider(),
            const Text("Hola Mundo!"),

            Divider(),
            const Text("Hola Mundo!"),

            Divider(),
            const Text("Hola Mundo!"),

            Divider(),
            const Text("Hola Mundo!"),
*/

        ],
      )
    );
  }
}