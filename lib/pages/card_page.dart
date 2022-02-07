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
          SizedBox(height: 10,),
          CustomCardType2(name: 'A nice place', imageUrl: 'https://img.big.dk/wp-content/uploads/2020/04/ESCR_Image-by-Lumion_01.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(name:'Hola',imageUrl: 'https://www.webopt.com/images/igallery/resized/701-800/jplenio_SDIM6992_big-775-4000-4000-100.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2017/04/1.jpg'),
        ],
      )
    );
  }
}