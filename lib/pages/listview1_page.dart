import 'package:flutter/material.dart';

class Listview1Page extends StatelessWidget {
   
  final superCars = const ['Audi', 'Ferrari','Corvette', 'Lamborghini', 'Porsche','Tesla'];

  const Listview1Page({Key key}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Type 1'),
      ),
      body: ListView(
        children: [
          ...superCars.map((supercar) =>   
          ListTile(
            //leading: Icon(Icons.accessibility),
            title: Text(supercar),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          )).toList(),
          Divider(),
        ],
      )
    );
  }
}