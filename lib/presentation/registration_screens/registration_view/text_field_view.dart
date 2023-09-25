import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? control;
  final TextInputAction? textInput;
  final bool obc;
  final String? text;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.control,
    this.textInput,
    this.text,
    this.suffixIcon,
    this.obc = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      ///keyboard type
      controller: control,
      keyboardType: keyboardType,
      textInputAction: textInput,
      obscureText: obc,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: Theme.of(context).textTheme.labelLarge,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
