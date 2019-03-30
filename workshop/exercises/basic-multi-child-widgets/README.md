---
prev: /exercises/basic-single-child-widgets/
next: /exercises/list-builder/
---

# Basic Multi Child Widgets

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/my_app/lib/exercises/basic-multi-child-widgets/main.dart

## Tasks

1. Some widgets accept multiple children: `Row`, `Column`, `GridView`, or `ListView`.
2. Replace `Center(..)` with `Row(..)`, and the property `child` with `children: <Widget>[`
3. What happened?
4. Try to add as many `Text(..)` as you want.
5. Lets experiments with `Expanded(..)` widget, use it to wrap each children.
6. See the difference.
7. Experiment replacing your `Row(..)` with `Column(..)`, `GridView(..)`, and `ListView(..)`
8. Does all of them work?
9. Instead of using `GridView(..)` now use `GridView.count(..)` and add the property `crossAxisCount: 2`

    ::: tip Note
    Some widgets are more complex and required you to build them, such as GridView(..). The count() method is a builder "helper".
    :::

### Extra

- When experimenting with `ListView(..)` instead of using the widget `Expanded` with `Text(..)`, try using `ListTile(..)` instead
  - Try `ListTile(..)` with other multi-child widgets.
  - Did you noticed it works with `Column(..)`?