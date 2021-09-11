import 'package:flutter/material.dart';
import '../widgets/style.dart';

class ScaffoldTheme extends StatelessWidget {
  final String title;
  final Widget floatingActionButton;
  final Widget body;

  const ScaffoldTheme({ 
    Key? key,
    required this.title,
    required this.floatingActionButton,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          this.title,
          style: titleTextStyle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      floatingActionButton: this.floatingActionButton,
      body: this.body,
    );
  }
}