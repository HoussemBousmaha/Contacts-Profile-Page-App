import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  child: Image.asset(
                    'lib/profile_picture.jpg',
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
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(Icons.call, 'Call'),
                      CustomButton(Icons.message, 'Text'),
                      CustomButton(Icons.video_call, 'Video'),
                      CustomButton(Icons.email, 'Email'),
                      CustomButton(Icons.directions, 'Directions'),
                      CustomButton(Icons.attach_money, 'Pay'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(this.icon, this.title, {Key? key}) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          color: Colors.indigo.shade800,
          onPressed: () {},
        ),
        Text(title),
      ],
    );
  }
}
