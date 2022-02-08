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

   //textButtonTheme
    textButtonTheme: TextButtonThemeData( style:  TextButton.styleFrom(primary: primary),),

    // floatingActionButtons: 
    floatingActionButtonTheme: const FloatingActionButtonThemeData( backgroundColor: primary,),  

    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: StadiumBorder(),
        elevation: 0
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

        //scaffoldBackgroundColor: Colors.black,
        
    //Primary color
    primaryColor: primary,
    
    //AppBar Theme
    appBarTheme: AppBarTheme( color: primary,  elevation: 0 ),
    
    //textButtonTheme
    textButtonTheme: TextButtonThemeData( style:  TextButton.styleFrom(primary: primary), ),
    
    // floatingActionButtons: 
    floatingActionButtonTheme: const FloatingActionButtonThemeData( backgroundColor: primary,),

   //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: StadiumBorder(),
        elevation: 0
      ),
    ),
  );

}