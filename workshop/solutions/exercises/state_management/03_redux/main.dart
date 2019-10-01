import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<Cats>(pickFavoriteReducer, initialState: Cats.White);
  runApp(FlutterReduxPage(
    store: store,
    title: "Flutter Redux Example",
  ));
}

class FlutterReduxPage extends StatelessWidget {
  final Store<Cats> store;
  final String title;

  FlutterReduxPage({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<Cats>(
      store: store,
      child: Column(
        children: <Widget>[
          StoreConnector<Cats, Cats>(
            converter: (store) => store.state,
            builder: (context, favoriteCat) {
              return MyCatWidget(cat: favoriteCat);
            },
          )
        ],
      ),
    );
  }
}

enum Cats { White, Black }

// Create our App, which will provide the `CounterModel` to
// all children that require it!
class FavoriteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StoreConnector<Cats, VoidCallback>(converter: (store) {
          return () => store.dispatch(PickFavoriteAction(Cats.Black));
        }, builder: (context, callback) {
          return MyFavoriteButton(onPressed: callback, title: "Pick Black Cat");
        }),
      ],
    );
  }
}

class MyFavoriteButton extends StatelessWidget {
  final dynamic onPressed;
  final String title;

  MyFavoriteButton({Key key, this.onPressed, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(title),
      onPressed: onPressed,
    );
  }
}

class MyCatWidget extends StatelessWidget {
  final Widget child;
  final Cats cat;

  MyCatWidget({Key key, this.cat, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

// Enum
enum Actions { Vote }

// Classes with payload
class PickFavoriteAction {
  final Cats cat;

  PickFavoriteAction(this.cat);
}

Cats pickFavoriteReducer(Cats state, dynamic action) {
  if (action is PickFavoriteAction) {
    return action.cat;
  }

  return state;
}

int voteReducer(int currentVotes, dynamic action) {
  if (action == Actions.Vote) {
    return currentVotes + 1;
  }

  return currentVotes;
}

final store = Store<int>(voteReducer, initialState: 0);

void vote() {
  print(store.state); // prev: 0
  store.dispatch(Actions.Vote);
  print(store.state); // new: 1
}
