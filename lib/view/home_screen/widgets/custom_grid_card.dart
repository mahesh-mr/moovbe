import 'package:flutter/material.dart';

import '../../core/colors.dart';

class CustomGridCard extends StatelessWidget {
  const CustomGridCard({
    Key? key,
    required this.size,
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.img,
    required this.bgColor,
  }) : super(key: key);

  final Size size;
    final VoidCallback onTap;
  final String title;
  final String subTitle;
  final String img;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: EdgeInsets.fromLTRB(size.width * 0.03, size.width * 0.03, 0, 0),
        // EdgeInsets.all(size.width * 0.03),
        height: size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: appBackground),
            ),
            Text(
              subTitle,
              style: TextStyle(fontSize: 14, color: appBackground),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: size.height * 0.1,
                  width: size.width * 0.245,
                  child: Image.asset(
                    img,
                    height: size.height * 0.1,
                    fit: BoxFit.contain,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
