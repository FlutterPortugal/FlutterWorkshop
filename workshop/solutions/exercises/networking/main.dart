import 'package:flutter/material.dart';

const jsonCatFact = '{"text": "In an average year, cat owners in the United States spend over 2 billion on cat food.","_id":"591f98803b90f7150a19c229"}';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat facts'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('More facts'),
            onTap: _parseFact,
          ),
          ListView.builder(...),
        ],
      ),
    );
  }
}

// PODO (Plain Old Dart Object)
class CatFact {
  String text;
  String id;
  String createdAt;
  String updatedAt;
  String user;
  String type;

  CatFact({
    this.text,
    this.id,
    this.type,
    this.updatedAt,
    this.createdAt,
    this.user,
  });

  factory CatFact.fromJson(Map<String, dynamic> parsedJson) {
    return CatFact(
      text: parsedJson['text'],
      id: parsedJson['_id'],
      type: parsedJson['type'],
      createdAt: parsedJson['createdAt'],
      updatedAt: parsedJson['updatedAt'],
      user: parsedJson['user'],
    );
  }
}
