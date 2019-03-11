import 'package:flutter/material.dart';
import 'dart:math';

Widget _yourWidget() {
  return Text("I need more space from the border");
}

/* -----------------
// DON'T EDIT AFTER THIS 
 ----------------- */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: _squareBox()),
    );
  }
}

Widget _squareBox() {
  return Center(
    child: 
        Container(
          width: pi * 100,
          height: pi * 100,
          color: Colors.white,
          child: Container(
            child: _yourWidget(),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue, width: 5.0, style: BorderStyle.solid),
            ),
          ),
        ),
  );
}