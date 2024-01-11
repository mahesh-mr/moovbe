import 'package:flutter/material.dart';
import 'package:moovbe_app/view/core/colors.dart';

// ignore: must_be_immutable
class CustomFomField extends StatelessWidget {
  String titles;

  CustomFomField({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
