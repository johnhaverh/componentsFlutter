import 'package:flutter/material.dart';
import 'package:componentsflutter/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined,color: AppTheme.primary),
            title: Text('Title'),
            subtitle: Text('Enim sint incididunt magna enim pariatur aliquip dolor minim fugiat laborum minim. Magna sunt cupidatat ut eiusmod aute ea. Proident elit ea fugiat non dolore tempor. Reprehenderit voluptate consectetur non ullamco eiusmod ex minim consectetur minim. Et Lorem et consequat dolor'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancel')),
                TextButton(onPressed: () {}, child: Text('Ok')),
              ],
            ),
          )

        ],
      ),
    );
  }
}