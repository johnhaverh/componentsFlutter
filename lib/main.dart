import 'package:flutter/material.dart';
import 'package:componentsflutter/router/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //replace Key to Key? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Page(),
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        //Primary color
        primaryColor: Colors.indigo,

        //AppBar Theme
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
          elevation: 0
        ),
      ),
    );
  }
}