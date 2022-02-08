import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertPage extends StatelessWidget {
   
  const AlertPage({Key key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (builder){
        return CupertinoAlertDialog(
          title: Text ('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text ('Hola mundo'),
              SizedBox(height: 10,),
              FlutterLogo(size: 50 ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: Text('Cancel',style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: Text('Ok')
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text ('Title'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text ('Hola mundo'),
              SizedBox(height: 10,),
              FlutterLogo(size: 50 ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: Text('Cancel')
            ),
            TextButton(
              onPressed: ()=> Navigator.pop(context), 
              child: Text('Ok')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
        //  style: ElevatedButton.styleFrom(
        //    shape: StadiumBorder(),
        //    elevation: 0
        //  ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text('Mostrar Alerta',style:  TextStyle(fontSize: 20 )),
          ),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context)
                                              : displayDialogIOS(context)
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}