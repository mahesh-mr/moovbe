import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/colors.dart';

class SeatLayoutWidget extends StatelessWidget {
  const SeatLayoutWidget({super.key, required this.size, required this.type});

  final Size size;
  final int type;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.41,
        width: type == 1 ? size.width * 0.3 : size.width * 0.4,
        // color: appYellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            type == 1
                ? SizedBox()
                : Column(
                    children: List.generate(
                      9,
                      (index) => Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: SvgPicture.asset(
                          'assets/sr.svg',
                          width: size.width * 0.038,
                          height: size.height * 0.035,
                        ),
                      ),
                    ),
                  ),
            Column(
              children: List.generate(
                9,
                (index) => Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: SvgPicture.asset(
                    'assets/sr.svg',
                    width: size.width * 0.035,
                    height: size.height * 0.035,
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                9,
                (index) => Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: SvgPicture.asset(
                    'assets/sr.svg',
                    width: size.width * 0.035,
                    height: size.height * 0.035,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
