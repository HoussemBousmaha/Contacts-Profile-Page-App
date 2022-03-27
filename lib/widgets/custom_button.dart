import 'package:flutter/material.dart';

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
