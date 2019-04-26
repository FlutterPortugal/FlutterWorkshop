import 'package:flutter/material.dart';

Widget _myStatelessWidget(name) {
  return Column(
    children: <Widget>[
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
      LegendWidget(Icons.sentiment_satisfied, "Smile! :)"),
    ],
  );
  
}

class LegendWidget extends StatelessWidget {
  final IconData picked;
  final String description;

  LegendWidget(this.picked, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(picked),
            Text(description),
          ],
        ));
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
        child: _myStatelessWidget("<name>"),
      )),
    );
  }
}
