import 'package:flutter/material.dart';
import 'package:componentsflutter/themes/app_theme.dart';
import 'package:componentsflutter/router/app_routes.dart';

class HomePage extends StatelessWidget {
   
  //final superCars = const ['Audi', 'Ferrari','Corvette', 'Lamborghini', 'Porsche','Tesla'];

  const HomePage({Key key}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        //elevation: 0,
        //backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,  //10, //superCars.length,
        itemBuilder: (context, index) => ListTile(  //itemBuilder: (context, index) => Text(superCars[index]), 
            leading: Icon(AppRoutes.menuOptions[index].iconRoute, color: AppTheme.primary),//Icon(Icons.car_repair),
            title: Text(AppRoutes.menuOptions[index].name),//Text('Route name'),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
            onTap: () {
              
              //metodo 1 -- no muy optimo 
              // final route = MaterialPageRoute(builder: (context) => Listview1Page(),);
              // Navigator.push(context, route);
              //Navigator.pushReplacement(context, newRoute) //destruye las rutas previas-- util en login

              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            } ,
          ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}