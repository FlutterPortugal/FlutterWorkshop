---
prev: /exercises/basic-multi-child-widgets/
next: /exercises/stateless-widget/
---

# List Builder

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/workshop/solutions/exercises/list-builder/main.dart

## Project

Let's start a mini project, a simple app that will show us some cat facts, with the following:

  - A screen with a button to fetch cat facts from the web;
  - A list that shows the facts fetched;
  - Screen showing the details for each fact;

## Tasks

1. Let's start by creating a simple `List` in our first screen (you can call it `HomeScreen`). 
2. For now, and because we don't have any data yet, you can add simple `Text` objects or `ListTiles` to your `List`.
3. Try with both `ListView.builder(..)` that gives you a generator or with just `ListView(..)`. Can you spot the diferences?
4. In the last, can use the following in the `items`:

  ``` dart
    final items = List<ListTile>.generate(10, (index) => ListTile(title:Text("Row number $index")));
  ```

5. Now try with the `ListView.separated(...)` and give it some widget as a `separator` property. 
6. Edit that in a way the odd rows say "Odd row" and the even "Even row"  (tip: Int.isOdd)
7. Wrap your ListTile's with `GestureDetector(..)` so that the property onTap(..) will `print()` the row number.
   - You will need to open the Debug Console of Visual Studio Code to see the output on tap.
8. The function print is boring.. lets call a SnackBar to show the message.
   - Use the following function to help you.

    ``` dart
    Widget tappableTile(context, index) {
      return GestureDetector(
          child: ... ,
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: ... ,
            ));
          });
    }
    ```

9. Make the Snackbar only show for 100 milliseconds.
10. Right now, we should already have our List screen ready to be populated with amazing cat facts!

### Extra exercise

To have an infinite list with items here is an example from the Flutter docs:

``` dart
ListView.builder(
  padding: EdgeInsets.all(8.0),
  itemExtent: 20.0,
  itemBuilder: (BuildContext context, int index) {
    return Text('entry $index');
  },
)
```

![exercise](/images/task04.png)

source:[https://docs.flutter.io/flutter/widgets/ListView-class.html](https://docs.flutter.io/flutter/widgets/ListView-class.html)
