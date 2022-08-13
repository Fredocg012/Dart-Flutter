import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 10.0,


      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.ac_unit),
          title: const Text("Nombre ruta"),
          onTap: () {


            /*
            final route = MaterialPageRoute(
              builder: (context) => const Listview1Screen()
              );
            
            Navigator.push(context, route);
            */

            Navigator.popAndPushNamed(context, "card");

          },

        ),
        separatorBuilder: (context, index) => const Divider(),
         itemCount: 100
         )
    );
  }
}