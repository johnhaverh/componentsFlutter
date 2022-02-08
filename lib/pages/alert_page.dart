import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
   
  const AlertPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: ElevatedButton(
          //  style: ElevatedButton.styleFrom(
          //    shape: StadiumBorder(),
          //    elevation: 0
          //  ),
           onPressed: () {}, 
           child: Text('Mostrar Alerta')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
        },
      ),
    );
  }
}