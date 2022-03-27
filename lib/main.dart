import 'package:flutter/material.dart';

import 'models/themes.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_list_tile.dart';

void main() => runApp(const ContactPageApp());

class ContactPageApp extends StatefulWidget {
  const ContactPageApp({Key? key}) : super(key: key);

  @override
  State<ContactPageApp> createState() => _ContactPageAppState();
}

enum APP_THEME { light, dark }

class _ContactPageAppState extends State<ContactPageApp> {
  var currentTheme = APP_THEME.light;

  void toggleTheme() {
    setState(() {
      currentTheme == APP_THEME.dark ? currentTheme = APP_THEME.light : currentTheme = APP_THEME.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts Profile Page',

      // Removing debug banner
      debugShowCheckedModeBanner: false,

      // Switch between light and dark themes.
      theme: currentTheme == APP_THEME.dark ? MyAppTheme.appThemeDark() : MyAppTheme.appThemeLight(),

      // Scaffold widget as home
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
          actions: [IconButton(icon: const Icon(Icons.star_border), onPressed: () {})],
          elevation: 0,
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
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Theme(
                    data: ThemeData(iconTheme: const IconThemeData(color: Colors.blue)),
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
                ),
                const Divider(color: Colors.grey),
                const CustomListTile(
                  leadingIcon: Icons.phone,
                  trailingIcon: Icons.message,
                  title: '0540998175',
                  subtitle: 'Mobile',
                ),
                const CustomListTile(
                  leadingIcon: null,
                  trailingIcon: Icons.message,
                  title: '041730531',
                  subtitle: 'Mobile',
                ),
                const Divider(color: Colors.grey),
                const CustomListTile(
                  leadingIcon: Icons.email,
                  trailingIcon: null,
                  title: 'HoussemBousmaha@gmail.com',
                  subtitle: 'work',
                ),
                const Divider(color: Colors.grey),
                const CustomListTile(
                  leadingIcon: Icons.location_history,
                  trailingIcon: Icons.directions,
                  title: 'hai akid lotfi',
                  subtitle: 'home',
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.threesixty),
          onPressed: toggleTheme,
        ),
      ),
    );
  }
}
