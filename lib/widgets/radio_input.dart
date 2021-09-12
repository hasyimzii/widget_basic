import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class RadioInput extends StatelessWidget {
  final String title;
  final Object group;
  final String value;
  final FormFieldValidator onChanged;

  const RadioInput({
    Key? key,
    required this.title,
    required this.group,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(
        this.title,
        style: inputFieldTextStyle,
      ),
      activeColor: blueColor,
      groupValue: this.group,
      value: this.value,
      onChanged: this.onChanged,
    );
  }
}
