import 'package:flutter/material.dart';

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
