import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/style.dart';

class TextFieldInput extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final FormFieldValidator validator;
  final FormFieldValidator onChanged;

  const TextFieldInput({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    required this.validator,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      cursorColor: whiteColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
        hintText: this.hintText,
        hintStyle: inputHintTextStyle,
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
      validator: this.validator,
      onChanged: this.onChanged,
    );
  }
}
