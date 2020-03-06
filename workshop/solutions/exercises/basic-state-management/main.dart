import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FavoriteInheritedWidget(
    favoriteColor: FavoriteColor(color: Colors.blue),
    child: MaterialApp(
      title: 'Basic State',
      home: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FavoriteInheritedWidget favorite = context.dependOnInheritedWidgetOfExactType<FavoriteInheritedWidget>();

    return Scaffold(
      appBar: AppBar(
        title: Text('My favorite color'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Make it blue!'),
            color: Colors.blue,
            onPressed: () {
              favorite.favoriteColor.newFavorite(Colors.blue);
            },
          ),
          RaisedButton(
            child: Text('Make it yellow!'),
            color: Colors.yellow,
            onPressed: () {
              favorite.favoriteColor.newFavorite(Colors.yellow);
            },
          ),
          RaisedButton(
            child: Text('Make it magic!'),
            onPressed: () {
              favorite.favoriteColor.newFavorite(
                Color.fromRGBO(
                  Random().nextInt(255),
                  Random().nextInt(255),
                  Random().nextInt(255),
                  1.0,
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}

class FavoriteInheritedWidget extends InheritedWidget {
  final FavoriteColor favoriteColor;

  const FavoriteInheritedWidget({
    this.favoriteColor,
    Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(FavoriteInheritedWidget oldWidget) => true;

  static FavoriteInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FavoriteInheritedWidget>();
  }
}

class FavoriteColor {
  Color color;

  FavoriteColor({this.color});

  newFavorite(Color newColor) => this.color = newColor;
  getFavorite() => this.color;
}
