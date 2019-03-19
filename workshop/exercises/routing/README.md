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
    * tip:
    ```
    final String title; 
    SecondPage({this.title});
    ```
6. Add to the title of the second page the row number clicked.
7. You can also navigate by using `named-routes` by configuring them in the `MaterialApp` widget with the properties: `routes` and `initialRoute`
8. Use `named-routes` and navigating with `Navigator.pushNamed(context, <name>)`
    * tip:
    ```
    MaterialApp(
        initialRoute: '/',
        routes: {
            '/': (context) => FirstPage(),
            '/second': (context) => SecondPage(),
        },
    );
    ```


### Extra    
* Could you make Second Screen return data back to the First Screen?
   * Read:   https://flutter.io/docs/cookbook/navigation/returning-data