import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar:AppBar(
        title: const Text("Home Screen"),
        elevation: 10.0,   
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text("Número de Clicks", style: fontSize30,),
            Text("10", style: fontSize30 ),
          ],   
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed:() {
          print("Hola Mundo");
          counter++;
         } ,
        ),
    );
  }

}

