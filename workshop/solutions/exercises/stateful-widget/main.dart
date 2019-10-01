import 'package:flutter/material.dart';

Widget _myStatefulWidget() {
  // Write your widget here
  return MyButton();
}

class MyButton extends StatefulWidget {
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  final String originalText = "Hello, click me once!";
  final String clickedText = "You've clicked me!";

  Text textWidget;

  @override
  void initState() {
    textWidget = Text(originalText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: textWidget,
      onPressed: () {
        setState(() {
          textWidget = Text(clickedText);
        });
      },
    );
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
