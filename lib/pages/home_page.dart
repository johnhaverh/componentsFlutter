import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   
  //final superCars = const ['Audi', 'Ferrari','Corvette', 'Lamborghini', 'Porsche','Tesla'];

  const HomePage({Key key}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.separated(
        itemCount: 10, //superCars.length,
        //itemBuilder: (context, index) => Text(superCars[index]), 
        itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.car_repair),
            title: Text('Route name'),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.deepPurpleAccent,),
            onTap: () {
              
              //metodo 1 -- no muy optimo 
              // final route = MaterialPageRoute(builder: (context) => Listview1Page(),);
              // Navigator.push(context, route);
              //Navigator.pushReplacement(context, newRoute) //destruye las rutas previas-- util en login

              Navigator.pushNamed(context, 'card2');
            } ,
          ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}