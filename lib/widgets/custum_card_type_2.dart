import 'package:flutter/material.dart';
import 'package:componentsflutter/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String name;

  const CustomCardType2({Key key, @required this.imageUrl, this.name}) : super(key: key);

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
            image: NetworkImage(imageUrl), 
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text (name ?? 'No description')
            ),
          //Image(image: NetworkImage('https://img.big.dk/wp-content/uploads/2020/04/ESCR_Image-by-Lumion_01.jpg')),
        ],
      ),
    );
  }
}