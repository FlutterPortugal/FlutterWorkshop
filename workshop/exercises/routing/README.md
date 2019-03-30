---
prev: /exercises/list-builder/
next: /exercises/stateless-widget/
---

# Routing/Navigation

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/my_app/lib/exercises/routing/main.dart

## Tasks

1. Run the app an try it out.
2. How many ways you can move back from the second screen back to the first?
::: tip Node
    As you might noticed the field `onPressed` expects a function, in the case of "FirstPage" we are using an anonymous function, that will call the `Navigator` for the app to navigate to the "SecondPage" while in this second page for the `onPressed` we are now using a normal function instead.
:::

3. In the "FirstPage" remove the Button and create a simple `ListView` with more than 20 children (go crazy)
4. Add a "onTap:" funcionality for each row. When user taps on a odd indexed Row, navigates to the "Second Page"
   - The `ListTile` used together as children of `ListView` have the field `onTap` that expects a function.
5. Add a Constructor to the "Second Page" to accept a String fields
    - Note:

        ``` dart
        final String title;
        SecondPage({this.title});
        ```

        There are two ways of building the constructor, with `optional arguments` and not. If you create the arguments with curly braces the arguments are optional and can be call in any order. If not, you don't need to explicity name the arguments but they need to be in order.


        ``` dart
        // optional arguments
        const SecondPage({this.title, this.subtitle});
        // object creation
        SecondPage(title: "Title")

        // without optional arguments
        const SecondPage(this.title, this.subtitle);
        // object creation
        SecondPage("Title", "SubTitle")

        ```

6. Add to the title of the second page the row number clicked.
7. You can also navigate by using `named-routes` by configuring them in the `MaterialApp` widget with the properties: `routes` and `initialRoute`
8. Use `named-routes` and navigating with `Navigator.pushNamed(context, <name>)`
    - tip:

        ``` dart
        MaterialApp(
            initialRoute: '/',
            routes: {
                '/': (context) => FirstPage(),
                '/second': (context) => SecondPage(),
            },
        );
        ```

### Extra

- Could you make Second Screen return data back to the First Screen?
  - Read: [https://flutter.io/docs/cookbook/navigation/returning-data](https://flutter.io/docs/cookbook/navigation/returning-data)