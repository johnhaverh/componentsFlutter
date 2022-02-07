import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.deepPurpleAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //Primary color
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0
    ),
  );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(

    //Primary color
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //scaffoldBackgroundColor: Colors.black,
  );
}