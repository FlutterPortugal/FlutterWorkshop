import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portugal Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

/// This is another widget, called `MyHomePage` which does nothing but showing our amazing logo :)
class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  /// This is where all the magic (rendering) happens within each Widget and where you are going to
  /// compose your widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Image.network('https://secure.meetupstatic.com/photos/member/d/e/5/5/highres_286016917.jpeg'),
      ),
    );
  }
}
