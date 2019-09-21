import 'package:flutter/material.dart';


const jsonCatFact = '{"text": "In an average year, cat owners in the United States spend over 2 billion on cat food.","_id":"591f98803b90f7150a19c229"}';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Json Parsing'),
        ),
        body: Center(
          child: Text(jsonCatFact),
        ),
      ),
    );
  }
}

// PODO (Plain Old Dart Object)
class CatFact {
  String text;
 	String id;
  
  CatFact({this.text, this.id});

  factory CatFact.fromJson(Map<String, dynamic> parsedJson){
    return CatFact(
      text: parsedJson['text'],
      id : parsedJson['_id'],
    );
  }
}

