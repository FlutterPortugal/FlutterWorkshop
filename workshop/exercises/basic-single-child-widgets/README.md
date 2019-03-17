# Basic Single Child Widgets

## Setup

- Copy the content of `main.txt` into the file this folder into `/my_app/lib/main.dart`

## Tasks

1. Run `my_app`.
2. What do you see?
3. Look at the code at `my_app/lib/main.dart`.
4. Without ever deleting the widget `Text("I need more space from the border")`
5. Wrap your widget `Text(..)` with widget `Center(child:<widget>)` to give him more space.
6. What happened to the text?
7. Replace widget `Center(..)` with `Align(..)`, add the field `alignment`, and experiment with:
   1. `alignment: Alignment.center`
   2. `alignment: Alignment.bottomCenter`
   3. `alignment: Alignment.topLeft`
   4. How many alignments there are?
8. Replace widget `Align(..)` now with `Padding`, add the field `padding`, and experiment with various edgeInsets and values
   1. `padding: EdgeInsets.all(10.0)`
   2. `padding: EdgeInsets.fromLTRB(left, top, right, bottom)`
   3. `EdgeInsets.symmetric(vertical: 8.0)`
   4. `EdgeInsets.only(left: 40.0)`
9. Replace now the widget with `Container(..)`, notice how this widget has `alignment` and `padding` field. edit a bit the fields such as you did with Align and Padding widgets.
10. Replace now with the widget `Transform.rotate(..)`, `.scale(..)` and `.translate(..)`, don't forget to keep your child widget `Text(..)`
   1.  `Transform.scale(scale: 2.0, ..)`
   2.  `Transform.translate(offset: Offset(10.0, 10.0), ..)`
   3.  `Transform.rotate(angle: pi / 4, ..)`

# Lessons Learned

- [Center](https://docs.flutter.io/flutter/widgets/Center-class.html) centers one widget inside
- [Align](https://docs.flutter.io/flutter/widgets/Align-class.html) up, down, left, right, together!
- [Padding](https://docs.flutter.io/flutter/widgets/Padding-class.html) gives inside spacing
- [Container](
https://docs.flutter.io/flutter/widgets/Container-class.html) powerfull widget to help position and much more a widget
- [Transform](https://docs.flutter.io/flutter/widgets/Transform-class.html) go crazy


## Articles

- [Flutter — Container Cheat Sheet
](https://medium.com/jlouage/container-de5b0d3ad184)