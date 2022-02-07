import 'package:flutter/material.dart';
import 'package:componentsflutter/widgets/widgets.dart';
class CardPage extends StatelessWidget {
   
  const CardPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text('Card Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CustomCardType1(),
          CustomCardType1(),
        ],
      )
    );
  }
}