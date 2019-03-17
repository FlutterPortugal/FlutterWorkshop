import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Multi Child Widgets'),
        ),
        body: _myWidget(),
      ),
    );
  }
}

Widget _myWidget() {
  final items = [
    ListTile(title: Text("Oldest child")),
    ListTile(title: Text("Favorite child")),
    ListTile(title: Text("Youngest child")),
  ];

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      
      final item = items[index];

      return item;
    },
  );
}
