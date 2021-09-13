import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class DatetimePicker extends StatelessWidget {
  final String initialValue;
  final VoidCallback onTap;

  const DatetimePicker({
    Key? key,
    required this.initialValue,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(text: this.initialValue),
      // initialValue: this.initialValue,
      readOnly: true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.event,
          color: whiteColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: semiWhiteColor,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: whiteColor,
            style: BorderStyle.solid,
          ),
        ),
      ),
      style: inputFieldTextStyle,
      onTap: this.onTap,
    );
  }
}
