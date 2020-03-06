import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Facts'),
      ),
      body: ListView.builder(
        itemCount: facts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: facts[index].id,
            subtitle: facts[index].text,
            onTap: () {
              // This is where you should navigate to a new screen
            },
          );
        },
      ),
    );
  }
}
