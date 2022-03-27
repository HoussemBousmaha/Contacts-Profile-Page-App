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
      theme: MyAppTheme.appThemeLight(),
      // Removing debug banner
      debugShowCheckedModeBanner: false,
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
        IconButton(icon: Icon(icon), onPressed: () {}),
        Text(title),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(icon: Icon(leadingIcon), color: Theme.of(context).iconTheme.color, onPressed: () {}),
      title: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(subtitle),
      trailing: IconButton(icon: Icon(trailingIcon), color: Theme.of(context).iconTheme.color, onPressed: () {}),
    );
  }
}

class MyAppTheme {
  static ThemeData appThemeLight() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.light,

      // Defines theme for AppBar
      appBarTheme: const AppBarTheme(
        // AppBar's color.
        color: Colors.white,

        // Theme for AppBar's icons.
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),

      // Theme for app's icons.
      iconTheme: IconThemeData(
        color: Colors.indigo.shade600,
      ),
    );
  }

  static ThemeData appThemeDart() {
    return ThemeData();
  }
}
