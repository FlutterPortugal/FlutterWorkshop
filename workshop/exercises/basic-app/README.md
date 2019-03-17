# Basic App

## Setup

- Make sure when running ```flutter doctor``` all is okay, follow the insctrution in /setup-flutter if needed.

## Tasks 
1. Open folder ```my_app/``` with [Visual Studio Code](https://code.visualstudio.com/)
2. Replace the following content into your file `my_app/lib/`.

<<< @/my_app/lib/exercises/basic-app/main.dart

1. Open the file ```main.dart```
2. With a device or emulator connected.
3. Press F5 or "Debug -> Start Debugging".
4. Check your device/emulator screen.
5. What do you see?
6. Change the texts for example of "Hello World" to something else and save the file.
7.  What happened after you saved?

# Lessons Learned

- ```lib/main.dart``` is the starting point of the Flutter app with the function 'main()' being the root, starting point.
- Widget [Scaffold](https://flutter.io/docs/catalog/samples/Scaffold) is the main Widget of the screen, with a top bar "AppBar" and a "body" that here is a centered Text.
- [AppBar](https://flutter.io/docs/catalog/samples/basic-app-bar) is the widget that controls the top navigation with a title.
- [Center](https://flutter.io/docs/development/ui/widgets/layout) any widget added will be centered in the available space.
- [Text](https://docs.flutter.io/flutter/widgets/Text-class.html) to have any text presented in the screen, this is the widget to be used, is one of the basic. Check all of text widgets [here](https://flutter.io/docs/development/ui/widgets/text).
- HotReload, without having to rerun the app, by only saving the changes you can see the changes applied imediately.