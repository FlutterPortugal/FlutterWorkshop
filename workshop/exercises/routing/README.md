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
3. In the "FirstPage" remove the Button and create a simples list with 500 elements
4. Add a "tap" funcionality for each row. When user taps on a odd indexed Row, navigates to the "Second Page"
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