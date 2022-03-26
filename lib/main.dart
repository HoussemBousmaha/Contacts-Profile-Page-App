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
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://github.com/HoussemBousmaha/CustomContacts/blob/main/lib/profile_image.jpg?raw=true',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                // when the width value is not defined
                // it takes the value of its parent width element.
                // (the column which takes double.infinity)
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Houssem Bousmaha',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
