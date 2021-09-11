import 'package:flutter/material.dart';
import '../widgets/style.dart';

class ContentContainer extends StatelessWidget {
  final List<Widget> children;

  const ContentContainer({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.children,
      ),
    );
  }
}
