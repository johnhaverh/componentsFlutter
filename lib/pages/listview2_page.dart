import 'package:flutter/material.dart';

class Listview2Page extends StatelessWidget {
   
  final superCars = const ['Audi', 'Ferrari','Corvette', 'Lamborghini', 'Porsche','Tesla'];

  const Listview2Page({Key key}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Type 2'),
        //elevation: 0,
        //backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.separated(
        itemCount: superCars.length,
        //itemBuilder: (context, index) => Text(superCars[index]), 
        itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.car_repair),
            title: Text(superCars[index]),
            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.deepPurpleAccent,),
            onTap: () {
              final supercar = superCars[index];
              print(supercar);
            } ,
          ), 
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}