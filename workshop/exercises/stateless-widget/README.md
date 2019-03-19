---
prev: /exercises/routing/
next: /exercises/stateful-widget/
---

# Basic Stateless Widgets

Stateless Widget:
"A widget that does not require mutable state."

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/my_app/lib/exercises/stateless-widget/main.dart

## Task

1. Notice that you already used a Stateless widget, notice the `MyApp`in the code.
2. Lets create one of our own.
3. In `my_app/lib/main.dart` create a class called `Hello(..)` in your `main.dart`

```
class Hello extends StatelessWidget {

  final String name;

  Hello({this.name})

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello $name"),
    );
  }
}
```

4. Use `Hello(..)` instead of the `Text(..)`
5. Try adding more variables;
6. What other example of a stateless widget you could create?

