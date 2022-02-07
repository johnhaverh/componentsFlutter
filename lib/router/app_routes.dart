import 'package:flutter/material.dart';
import 'package:componentsflutter/pages/pages.dart';

class AppRoutes {

  static const initialRoute = 'home';

  Map<String, Widget Function(BuildContext)> routes = {
    'home'     :(BuildContext context) => const HomePage(),
    'listview1':(BuildContext context) => const Listview1Page(),
    'listview2':(BuildContext context) => const Listview2Page(),
    'alert'    :(BuildContext context) => const AlertPage(),
    'card'     :(BuildContext context) => const CardPage(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return  MaterialPageRoute(builder: (context) => const AlertPage());
  }
}