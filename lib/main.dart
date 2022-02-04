import 'package:flutter/material.dart';
import 'package:componentsflutter/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //replace Key to Key? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Page(),

      initialRoute: 'home',
      routes:{
        'home'     :(BuildContext context) => const HomePage(),
        'listview1':(BuildContext context) => const Listview1Page(),
        'listview2':(BuildContext context) => const Listview2Page(),
        'alert'    :(BuildContext context) => const AlertPage(),
        'card'     :(BuildContext context) => const CardPage(),
      }
    );
  }
}