import 'package:mobx/mobx.dart';

part 'favorite.g.dart';

enum Cats { White, Black }

// This is the class used by rest of your codebase
class Favorite = _Favorite with _$Favorite;

// The store-class
abstract class _Favorite implements Store {
  @observable
  Cats cat = Cats.White;

  @action
  void set(Cats cat) {
    this.cat = cat;
  }
}
