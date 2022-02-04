import 'package:flutter/material.dart';
import 'package:componentsflutter/pages/listview1_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //replace Key to Key? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview1Page()
    );
  }
}