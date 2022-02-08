import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Herrera'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('JH'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU'),
        )
      ),
    );
  }
}