// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import '../core/colors.dart';
import 'custom_button.dart';

class CustomListTaile extends StatelessWidget {
   const CustomListTaile({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.btntitle,
    required this.tailOnpressed,
    required this.onPressed,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle;
  final String image;
  final String btntitle;
     final VoidCallback tailOnpressed;
   final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tailOnpressed,
      child: Card(
        
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            height: size.height * 0.084,
            //  color: appYellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(image)),
                      color: appGrey),
                ),
                SizedBox(
                  height: size.height * 0.06,
                  width: size.width * 0.41,
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          subTitle,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.02),
                  child: CustomButton(
                    height: size.height * 0.04,
                    width: size.width * 0.02,
                    onPressed: onPressed,
                    title: btntitle,
                    radius: 5,
                  ),
                )
               
              ],
            ),
          )),
    );
  }
}
