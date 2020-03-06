---
prev: /exercises/networking/
---

# Basic State Management

Flutter is [declarative](https://en.wikipedia.org/wiki/Declarative_programming), when you want to change the UI, you don't change it by setting the Widget like `TextWidget.setText("Hello")` this is the most common in [`imperative`](https://en.wikipedia.org/wiki/Imperative_programming) languages, change the data and the UI will update accordingly.

State is the name we give to the current status of the data and in Flutter there are two kinds of dates, an Ephemeral, that is temporary and is used in the `StatefulWidgets` however there is another more common `App State`.

When to use one or the another?
![Ephemeral vs App State](/images/ephemeral_vs_app_state.png)
[source](https://flutter.dev/docs/development/data-and-backend/state-mgmt/ephemeral-vs-app)

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/workshop/solutions/exercises/basic-state-management/main.dart

## Tasks

1. After copying the code, run the app. Try it out.
2. As you probably might have noticed, this file holds 3 classes:
  * `HomeScreen` — our home screen widget, nothing new so far;
  * `FavoriteColor` — our data class, just like in any other OOP language, here it holds a particular `Color`;
  * `FavoriteInheritedWidget` - a particular widget that allows us to notify (and rebuild) children widgets when needed. This is where the state management comes in;
3. So, what's happening here? There seems to be a lot of new stuff going on. Let's break it down.
  - So, we have an `InheritedWidget` which is our `FavoriteInheritedWidget`, this kind of "special" widgets allows us bubbling down the widget tree (this is, all of its children widgets) and let them be notified when they need to
  ```
  @override
  bool updateShouldNotify(FavoriteInheritedWidget oldWidget) => true;
  ```
  - Likewise, when child widgets need to access its parent (ancestor), they can do so throught the `context` and access its properties/methods. This is being done where you see
  ```
  FavoriteInheritedWidget favorite = context.dependOnInheritedWidgetOfExactType<FavoriteInheritedWidget>();
  ```
  - Last but not least, when they get a reference to this `InheritedWidget` and, for example here, change its color, it notifies all of its dependent children so they can rebuild and be aware of the new changes.
4. You can play a bit with the different buttons and see that the UI actually changes accordingly. There are a lot of state management packages used with Flutter, to name a few: **BLoC**, **Provider**, **MobX**, **ScopedModel** or even **Redux**. What's magic about all of them, is that behind the scenes most of the time they are just using `InheritedWidgets`. 