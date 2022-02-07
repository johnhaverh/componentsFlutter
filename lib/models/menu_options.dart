import 'package:flutter/material.dart' ;

class MenuOptions {
  final String route;
  final IconData iconRoute;
  final String name;
  final Widget screen;
   

  MenuOptions({
    @required this.route, 
    @required this.iconRoute, 
    @required this.name, 
    @required this.screen});
}