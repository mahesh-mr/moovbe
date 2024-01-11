import 'package:flutter/material.dart';

import '../core/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.title,
      this.btncolor = appRed,
      this.textColor = appBackground,
      this.radius = 10})
      : super(key: key);

  final double height;
  final double width;
  final double? radius;
  final VoidCallback onPressed;
  final String title;
  final Color? btncolor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: btncolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.normal, ),
      ),
    );
  }
}
