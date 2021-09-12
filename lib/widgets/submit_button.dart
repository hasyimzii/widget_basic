import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class SubmitButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const SubmitButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        this.label,
        style: titleListTextStyle,
      ),
      icon: Icon(this.icon),
      style: ElevatedButton.styleFrom(
        primary: blueColor,
        fixedSize: Size(500, 50),
      ),
      onPressed: this.onPressed,
    );
  }
}
