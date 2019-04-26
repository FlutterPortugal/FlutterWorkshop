import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(BlocPage(
    title: "Flutter Redux Example",
  ));
}

class BlocPage extends StatelessWidget {
  final String title;

  final StreamController ctrl = StreamController();

  BlocPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final StreamSubscription subscription =
      ctrl.stream.listen((data) => print('$data'));


    ctrl.sink.add('my name');
    ctrl.sink.add(1234);
    ctrl.sink.add({'a': 'element A', 'b': 'element B'});
    ctrl.sink.add(123.45);

    //
    // We release the StreamController
    //
    ctrl.close();

    return Container(
      child: Text(title),
    );
  }
}

// class SecondPage extends StatelessWidget {
//   SecondPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Hi"),
//     );
//   }
// }

// void main() {
//   final StreamController ctrl = StreamController();

//   final StreamSubscription subscription =
//       ctrl.stream.listen((data) => print('$data'));

//   //
//   // We here add the data that will flow inside the stream
//   //
//   ctrl.sink.add('my name');
//   ctrl.sink.add(1234);
//   ctrl.sink.add({'a': 'element A', 'b': 'element B'});
//   ctrl.sink.add(123.45);

//   //
//   // We release the StreamController
//   //
//   ctrl.close();
// }
