---
prev: /exercises/basic-multi-child-widgets/
next: /exercises/stateless-widget/
---

# List Builder

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/my_app/lib/exercises/list-builder/main.dart
  
## Tasks

1. Compare how different `ListBuilder(..)` is with a previous used `ListView(..)`.
2. Edit so that it only show the "Favorite Child" row, without altering "items" array
3. Replace `items` with the following:

  ``` dart
    final items = List<ListTile>.generate(10, (index) => ListTile(title:Text("Row number $index")));
  ```

1. What happened?
2. Experiment with the function `.filled()`
3. Edit that in a way the odd rows say "Odd row" and the even "Even row"  (tip: Int.isOdd)
4. Wrap your ListTile's with `GestureDetector(..)` so that the property onTap(..) will `print()` the row number.
   - You will need to open the Debug Console of Visual Studio Code to see the output on tap.
5. The function print is boring.. lets call a SnackBar to show the message.
   - Use the following function to help you.

    ``` dart
    Widget tappableTile(context, index) {
      return GestureDetector(
          child: ... ,
          onTap: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: ... ,
            ));
          });
    }
    ```

6. Make the Snackbar only show for 100 milliseconds.

---

### Extra

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

[source https://docs.flutter.io/flutter/widgets/ListView-class.html](https://docs.flutter.io/flutter/widgets/ListView-class.html)