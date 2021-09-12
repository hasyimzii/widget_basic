import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class CheckboxInput extends StatelessWidget {
  final String title;
  final bool value;
  final FormFieldValidator onChanged;

  const CheckboxInput({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        this.title,
        style: inputFieldTextStyle,
      ),
      value: this.value,
      onChanged: this.onChanged,
      activeColor: blueColor,
      checkColor: whiteColor,
    );
  }
}
