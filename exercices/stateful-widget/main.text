import 'package:flutter/material.dart';

Widget _myStatefulWidget() {
  // Write your widget here
  return MyButton();
}

class MyButton extends StatefulWidget {
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  
  @override
  Widget build(BuildContext context) {
    return Text("boring stateful");
  }
}

/* -----------------
// DON'T EDIT AFTER THIS 
 ----------------- */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: _myStatefulWidget(),
      )),
    );
  }
}
