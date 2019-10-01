import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemExtent: 20.0,
            itemBuilder: (BuildContext context, int index) {
              return Text('entry $index');
            },
          )),
    );
  }
}

enum Cats { White, Black }

class DislikedModel extends Model {
  Cats _dislikedCat = Cats.White;

  Cats get disliked => _dislikedCat;

  void update(Cats newCat) {
    _dislikedCat = newCat;

    notifyListeners();
  }
}

class FavoriteModel extends Model {
  Cats _favoriteCat = Cats.White;

  Cats get favorite => _favoriteCat;

  void update(Cats newCat) {
    _favoriteCat = newCat;

    notifyListeners();
  }

  static FavoriteModel of(BuildContext context) =>
      ScopedModel.of<FavoriteModel>(context);
}

// Create our App, which will provide the `CounterModel` to
// all children that require it!
class FavoriteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FavoriteModel favorite = FavoriteModel.of(context);
    favorite.update(Cats.Black);

    return ScopedModel<DislikedModel>(
        model: DislikedModel(),
        child: ScopedModel<FavoriteModel>(
            model: FavoriteModel(),
            child: ScopedModelDescendant<FavoriteModel>(
                builder: (context, child, model) =>
                    CatWidget(cat: model.favorite))));
  }
}

class CatWidget extends StatelessWidget {
  final Widget child;
  final Cats cat;

  CatWidget({Key key, this.cat, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}