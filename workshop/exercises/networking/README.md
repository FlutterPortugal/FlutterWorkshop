---
prev: /exercises/networking/
next: /exercises/basic-state-management/
---

# Networking

This tasks will be simple and direct, it will give you practice in the most common way of server communication, through REST and with the most used type of data, JSON format. There are other ways of communicating with the server but that will be for other exercises.

## Setup

- Replace the following content into your file `my_app/lib/main.dart`

<<< @/my_app/lib/exercises/networking/main.dart

## Tasks

Lets start with most basic exercise, the parsing of a json string. Dart has a core package called `'dart:convert'` that you will use to serialize and deserialize json to dart classes and has the most used method `jsonDecode(<json_string>)` this will return a `Map<String, dynamic>`, lets understand it out while we do the exercises, step by step.

1. Run the app and check what happens.
2. Inspect the code and try to determine where is the serializing of json is happening.
3. Instead of showing the `json` string, can you nice Widget to show the text only?
4. We are using a variable with the `json` string, what if the information comes from a file?
   1. For this last task we will need to use a diferent core library called `services` and a property called `rootBundle`. For that you just to import it as following: `import 'package:flutter/services.dart' show rootBundle;`.
   2. Second part of this tasks is to add the file to the `assets/` folder. You can use the same folder in corresponding lib/ folder of the exercise.
   3. After all is set, you can call the `json` file with tis simple snippet:

        ``` dart
        Future<String> _loadJsonAsset() async {
            return await rootBundle.loadString('assets/<file_name.json>');
        }
        ```

    :::tip
    Is quite boring to generate all the PODs by hand, there are various automatic ways to do so, however, for now, if you feel so, try an online Dart PODO code generate: https://app.quicktype.io/
    :::

5. What is a Future, async, await?
6. On a next step, what would it be like to load a same json from the network, that is quite simple using the core library [`http`](https://pub.dartlang.org/packages/http), lets try it.
   1. You will need to import the library: `import 'package:http/http.dart' as http;`
   2. Lets use API cat facts: https://cat-fact.herokuapp.com
   3. To call a random cat fact you can use the `http` like so:

        ``` dart
        var response = await http.get("https://cat-fact.herokuapp.com/facts/random");
        ```

   4. Adapt your code to use the response of the service.

7. What if you would like to load a image? There is the method `Image.network()`, can you show the image `https://i.imgur.com/XJyemeI.jpg` ?
8. Try now with other images online, maybe a gif?
9. The image can take longer than usual, luckily someone from the community develop the following package: [`cached_network_image`](https://pub.dartlang.org/packages/cached_network_image). Install it, by following the instructions.
10. Instead of using `Image.network()` use the package mentioned.