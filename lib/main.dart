import 'package:flutter/material.dart';

void main() => runApp(const HelloFlutter());

class HelloFlutter extends StatefulWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  State<HelloFlutter> createState() => _HelloFlutterState();
}

String englishGreeting = 'Hello Flutter!';
String spanishGreeting = 'This is my text!';

class _HelloFlutterState extends State<HelloFlutter> {
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removing debug banner
      debugShowCheckedModeBanner: false,
      // Scaffold widget as home
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () {}),
          actions: [IconButton(icon: const Icon(Icons.star_border, color: Colors.black), onPressed: () {})],
          backgroundColor: Colors.white,
          elevation: 3,
        ),
        body: Container(),
      ),
    );
  }
}
