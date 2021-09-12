import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class ChatList extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String trailing;

  const ChatList({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      leading: Image.asset(
        this.image,
        width: 55,
        height: 55,
      ),
      title: Text(
        this.title,
        style: titleListTextStyle,
      ),
      subtitle: Text(
        this.subtitle,
        style: subtitleListTextStyle,
      ),
      trailing: Text(
        this.trailing,
        style: subtitleListTextStyle,
      ),
    );
  }
}
