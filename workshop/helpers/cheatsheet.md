# Cheatsheet

``` bash
# Cloning a repository
$ git clone <this repository>

## Flutter
# Check-up
$ flutter doctor
$ flutter upgrade
$ flutter --version

# Development
$ flutter create <app_name>
$ flutter devices
$ flutter run


$ flutter devices

# Accept Android Licenses
> flutter doctor --android-licenses

# Android Debug Bridge acting up?
> adb kill-server && adb start-server

# Tips
> Use the comma ',' after a parenthesis to format better the code.

# Turn off Docker
> Docker is know to cause problems with the Android emulator, since Flutter uses Dart VM.

# Java versions
> Use SDKMan to easily switch between Java versions, it is preferable to use Java 8 to avoid problems

# System variables
> Definir o $ANDROID_SDK_ROOT ou não irá correr o emulador a partir do VSCode

# Flutter Keys
> Keys: https://www.youtube.com/watch?v=kn0EOS-ZiIc

# Other Dart problems - Equatable
> Dart Problems: https://medium.com/flutter-community/dart-equatable-package-simplify-equality-comparisons-1a96a3fc4864

```