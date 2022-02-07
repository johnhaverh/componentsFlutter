import 'package:flutter/material.dart';
import 'package:componentsflutter/pages/pages.dart';
import 'package:componentsflutter/models/menu_options.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home',      name: 'Home Page',        screen: const HomePage(),      iconRoute: Icons.home),
    MenuOptions(route: 'listview1', name: 'List View type 1', screen: const Listview1Page(), iconRoute: Icons.list_alt),
    MenuOptions(route: 'listview2', name: 'List View type 2', screen: const Listview2Page(), iconRoute: Icons.list_alt_sharp),
    MenuOptions(route: 'alert',     name: 'Alerts',           screen: const AlertPage(),     iconRoute: Icons.add_alert),
    MenuOptions(route: 'card',      name: 'Cards',            screen: const CardPage(),      iconRoute: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     :(BuildContext context) => const HomePage(),
  //   'listview1':(BuildContext context) => const Listview1Page(),
  //   'listview2':(BuildContext context) => const Listview2Page(),
  //   'alert'    :(BuildContext context) => const AlertPage(),
  //   'card'     :(BuildContext context) => const CardPage(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return  MaterialPageRoute(builder: (context) => const AlertPage());
  }
}