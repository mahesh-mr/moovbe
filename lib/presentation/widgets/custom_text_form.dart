// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:moovbe_app/presentation/core/colors.dart';

// ignore: must_be_immutable
class CustomFomField extends StatelessWidget {
  final String titles;
  final TextInputType textinputType;
  final FormFieldValidator validator;
  final TextEditingController controller;
  const CustomFomField({
    Key? key,
    required this.titles,
    required this.textinputType,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textinputType,
      controller: controller,
      validator: validator,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(10),
          //   borderSide: const BorderSide(color: lightgrey)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // borderSide: const BorderSide(color: lightgrey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

          // borderSide:
          //     BorderSide(strokeAlign: StrokeAlign.inside, color: Colors.red),
        ),
        hintText: titles,
        fillColor: appGrey,
        focusColor: appGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
