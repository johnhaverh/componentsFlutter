import 'package:componentsflutter/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
   
  const SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider 6 Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400, 
            activeColor: AppTheme.primary,
            // divisions: 10,
            onChanged: _sliderEnabled ? (value){
              _sliderValue=value;
              setState(() { });
            }
            : null
          ),

          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() { });
          //   },
          // ),

          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled, 
          //   //title: Text('Slider Enabled'),
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() { });
          //   },
          // ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            title: Text('Slider Enabled'),
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() { });
            },
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            title: Text('Slider Enabled'),
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() { });
            },
          ),

          AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage('https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          //SizedBox(height: 50,)
        ],
      )
    );
  }
}