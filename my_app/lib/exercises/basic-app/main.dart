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
                body: const Center(
                child: const Text('Hello'),
                ),
            ),
        );
    }
}