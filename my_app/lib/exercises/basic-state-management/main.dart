import 'package:flutter/material.dart';

void main() {
  runApp(FavoriteInheritedWidget(
    favoriteColor: FavoriteColor(color: Colors.blue),
    child: MaterialApp(
      title: 'Basic State',
      home: FirstRoute(),
    ),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FavoriteInheritedWidget favorite =
        context.ancestorWidgetOfExactType(FavoriteInheritedWidget);

    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: favorite.favoriteColor.getFavorite(),
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            Wrap(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    favorite.favoriteColor.newFavorite(Colors.blue);
                  },
                ),
                RaisedButton(
                  color: Colors.yellow,
                  onPressed: () {
                    favorite.favoriteColor.newFavorite(Colors.yellow);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FavoriteInheritedWidget favorite =
        context.ancestorWidgetOfExactType(FavoriteInheritedWidget);

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          color: favorite.favoriteColor.getFavorite(),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
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
    return (context.inheritFromWidgetOfExactType(FavoriteInheritedWidget) as FavoriteInheritedWidget);
  }
}

class FavoriteColor {
  var color;

  FavoriteColor({this.color});

  newFavorite(Color newColor) => this.color = newColor;
  getFavorite() => this.color;
}