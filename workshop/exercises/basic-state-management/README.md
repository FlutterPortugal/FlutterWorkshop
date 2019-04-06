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

<<< @/my_app/lib/exercises/basic-state-management/main.dart

## Tasks

1. After copying the code, run the app. Try it out.
2. This is more of experimenting with the code mentioned. Notice how most of the code is from the routing exercise however, it has a `InheritedWidget`, what is it doing? How is it called?

## Project

Create a app with the following.

- Create an app with 3 Screens
  - List of cat facts;
  - Detail of 1 cat fact, after clicking an item of the list;
  - Screen with the favorites cat facts;
