---
prev: /exercises/stateful-widget/
next: /exercises/networking/
---

# Routing/Navigation

## Setup

- Update the following content into your file `my_app/lib/main.dart`

<<< @/workshop/solutions/exercises/routing/main.dart

## Tasks

1. Run the app an try it out.
2. How many ways you can move back from the second screen back to the first?
   ::: tip Note
   As you might noticed there are fields on some widgets such as  `onPressed` or `onTap` that expects a function (callback), in the case of "HomeScreen" we are using an anonymous function, that will call the `Navigator` when the user taps the `ListTile` for the app to navigate to the `DetailsScreen` while in this second page for the `onPressed` we are now using a normal function instead to pop back.
   :::
3. In the `HomeScreen` add a callback that will open the details for each `CatFact` tile. It should display the fact text in the new screen as well as the date it was created.
4. Add a Constructor to the `Details Screen` to accept a String fields.
   ::: tip Note

   ```dart
   final String text;
   DetailsScreen({this.text});
   ```

   There are two ways of building the constructor, with `optional arguments` and not. If you create the arguments with curly braces the arguments are optional and can be call in any order. If not, you don't need to explicity name the arguments but they need to be in order.

   ```dart
   // optional arguments
   const DetailsScreen({this.title, this.subtitle});
   // object creation
   DetailsScreen(title: "Title")

   // without optional arguments
   const DetailsScreen(this.title, this.subtitle);
   // object creation
   DetailsScreen("Title", "SubTitle")
   ```

   :::

6. How do you navigate to a new screen?
7. You can also navigate by using `named-routes` by configuring them in the `MaterialApp` widget with the properties: `routes` and `initialRoute`
8. Use `named-routes` and navigating with `Navigator.pushNamed(context, <name>)`
   ::: tip

   ```dart
   MaterialApp(
       initialRoute: '/',
       routes: {
           '/': (context) => HomeScreen(),
           '/details': (context) => DetailsScreen(),
       },
   );
   ```

   :::

9. How do you pass arguments when using named routes?
10. Try wrapping your `Text` containing the fact `text` in both `HomeScreen` and `DetailsScreen` screens and give it a tag. What happens when you navigate back and fourth?

### Extra

- Could you make Second Screen return data back to the First Screen?
  - Read: [https://flutter.io/docs/cookbook/navigation/returning-data](https://flutter.io/docs/cookbook/navigation/returning-data)
