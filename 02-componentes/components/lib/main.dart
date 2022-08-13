import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home'      : (BuildContext context) => const HomeScreen(),
        'listview1' : (BuildContext context) => const Listview1Screen(),
        'listview2' : (BuildContext context) => const Listview2Screen(),
        'alert'     : (BuildContext context) => const AlertScreen(),
        'card'      : (BuildContext context) => const CardScreen(),

      },
      //Cuando hay una screen que no existe, regresa a otra para no dar error
      onGenerateRoute: (settings) {
        print(settings);

        return MaterialPageRoute(
              builder: (context) => const Listview1Screen()
              );
      },
      
    );
  }
}