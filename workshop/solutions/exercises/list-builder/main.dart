import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      ListTile(title: Text("Oldest child")),
      ListTile(title: Text("Favorite child")),
      ListTile(title: Text("Youngest child")),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Multi Child Widgets'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return item;
          },
        ));
  }
}
