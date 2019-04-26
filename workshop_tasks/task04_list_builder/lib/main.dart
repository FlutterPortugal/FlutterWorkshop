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
        body: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemExtent: 20.0,
          itemBuilder: (BuildContext context, int index) {
            if (index % 2 == 0)
              return Text("I'm line number $index", style: TextStyle(fontWeight: FontWeight.bold));
            else
              return Container(
                alignment: Alignment.centerRight,
                child: Text("and I'm am on the right"),
              );
          },
        ),
      ),
    );
  }
}
