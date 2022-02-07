import 'package:flutter/material.dart';
import 'package:componentsflutter/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          
          FadeInImage(
            image: NetworkImage('https://img.big.dk/wp-content/uploads/2020/04/ESCR_Image-by-Lumion_01.jpg'), 
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text ('A beautiful sunset')
          ),
          //Image(image: NetworkImage('https://img.big.dk/wp-content/uploads/2020/04/ESCR_Image-by-Lumion_01.jpg')),
        ],
      ),
    );
  }
}