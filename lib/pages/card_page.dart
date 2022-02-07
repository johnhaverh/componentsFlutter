import 'package:componentsflutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

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
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary),
                  title: Text('Title'),
                  subtitle: Text('Enim sint incididunt magna enim pariatur aliquip dolor minim fugiat laborum minim. Magna sunt cupidatat ut eiusmod aute ea. Proident elit ea fugiat non dolore tempor. Reprehenderit voluptate consectetur non ullamco eiusmod ex minim consectetur minim. Et Lorem et consequat dolor'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}