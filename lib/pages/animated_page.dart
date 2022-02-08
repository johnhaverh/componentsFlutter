import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
   
  const AnimatedPage({Key key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {

  double _width = 50;
  double _height=50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape(){
    print('Hola');
    _width+=10;
    _height+=10;
    //_color = 
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.play_circle_outline, size: 35,),
        onPressed: (){
          changeShape();
        },
      ),
    );
  }
}