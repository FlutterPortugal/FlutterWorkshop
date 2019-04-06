import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemExtent: 20.0,
            itemBuilder: (BuildContext context, int index) {
              return Text('entry $index');
            },
          )),
    );
  }
}
