import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Multi Child Widgets'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(child: Text("I'm line number 1")),
              Expanded(child: Text("I'm line number 2")),
              Expanded(child: Text("I'm line number 3")),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(child: Text("I'm Column 1")),
                  Expanded(child: Text("I'm Column 2")),
                ],
              ))
            ],
          )),
    );
  }
}
