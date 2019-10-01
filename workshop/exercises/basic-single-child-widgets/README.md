---
prev: /exercises/basic-app/
next: /exercises/basic-multi-child-widgets/
---

# Basic Single Child Widgets

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/workshop/solutions/exercises/basic-single-child-widgets/main.dart

## Tasks

1. Run `my_app`.
2. What do you see?
3. Look at the code at `my_app/lib/main.dart`.
   ::: tip Node
   From this point onward you will always keep the current widget ``Text("I need more space from the border")` and we will wrap him with different widgets and see each result.
   :::
4. Wrap your widget `Text(..)` with widget `Center(child:<widget>)` to give him more space.
5. What happened to the text?
6. Now wrap `Text(..)` with `Align(..)`, add the field `alignment`, and experiment with:
   1. `alignment: Alignment.center`
   2. `alignment: Alignment.bottomCenter`
   3. `alignment: Alignment.topLeft`
   4. How many alignments there are?
7. Now wrap `Text(..)` with `Padding`, add the field `padding`, and experiment with various edgeInsets and values
   1. `padding: EdgeInsets.all(10.0)`
   2. `padding: EdgeInsets.fromLTRB(left, top, right, bottom)`
      - Experiment with each of the values: `left`, `top`, `right`, `bottom`
   3. `EdgeInsets.symmetric(vertical: 8.0)`
   4. `EdgeInsets.only(left: 40.0)`
8. Now wrap `Text(..)` with `Container(..)`, notice how this widget has `alignment` and `padding` field. edit a bit the fields such as you did with Align and Padding widgets.
9. Now wrap `Text(..)` with `Transform.rotate(..)`, `.scale(..)` and `.translate(..)`.
    1. `Transform.rotate(angle: pi / 4, ..)`
       - Make sure you have the library `dart:math` imported.
    2. `Transform.translate(offset: Offset(10.0, 10.0), ..)`
    3. `Transform.scale(scale: 2.0, ..)`

## Exercise

![exercise](/images/task02.png)

## Lessons Learned

- [Center](https://docs.flutter.io/flutter/widgets/Center-class.html) centers one widget inside
- [Align](https://docs.flutter.io/flutter/widgets/Align-class.html) up, down, left, right, together!
- [Padding](https://docs.flutter.io/flutter/widgets/Padding-class.html) gives inside spacing
- [Container](
https://docs.flutter.io/flutter/widgets/Container-class.html) powerfull widget to help position and much more a widget
- [Transform](https://docs.flutter.io/flutter/widgets/Transform-class.html) go crazy
- The library [`dart:math`](https://api.dartlang.org/stable/2.2.0/dart-math/dart-math-library.html) has various constants and functions you can use, such as constants [`e`](https://api.dartlang.org/stable/2.2.0/dart-math/e-constant.html), [`pi`](https://api.dartlang.org/stable/2.2.0/dart-math/pi-constant.html), [`sqrt2`](https://api.dartlang.org/stable/2.2.0/dart-math/sqrt2-constant.html) and funcions like [`exp`](https://api.dartlang.org/stable/2.2.0/dart-math/exp.html) or [`log`](https://api.dartlang.org/stable/2.2.0/dart-math/log.html)
- Since `dart:math` is one of the Dart core libraries, you don't need to define it the `pubspec.yaml` file, since it comes with the language, so you can imported everyone when needed

## Articles

- [Flutter — Container Cheat Sheet](https://medium.com/jlouage/container-de5b0d3ad184)
