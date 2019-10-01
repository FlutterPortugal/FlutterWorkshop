import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 50;

  void _updateSliderValue(newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Column(
        children: <Widget>[
          Slider(
            min: 0,
            max: 100,
            divisions: 10,
            value: _value,
            onChanged: (newValue) {
              _updateSliderValue(newValue);
            },
          ),
          Text("Current $_value")
        ],
      )),
    );
  }
}
