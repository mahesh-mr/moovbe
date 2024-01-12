// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moovbe_app/presentation/core/colors.dart';

import '../../widgets/custom_driver_card.dart';
import '../../widgets/seat_layout_widget.dart';

class ThreeSeaterLayout extends StatelessWidget {
  const ThreeSeaterLayout({
    Key? key,
    required this.index,
  }) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('KSRTC Swift Scania P-​series'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomDriverCard(size: size, index: index,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
              height: size.height * 0.56,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: appBlack,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: appBlack,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, right: size.width * 0.08),
                    child: SvgPicture.asset(
                      'assets/sb.svg',
                      width: size.width * 0.038,
                      height: size.height * 0.035,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: cross,
                    children: [
                      Container(
                        height: size.height * 0.41,
                        width: size.width * 0.2,
                        //color: appYellow,
                        child: Column(
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
                      ),
                      SeatLayoutWidget(size: size, type: 2),
                      //SeatLayoutWidget(size: size,type: 1),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
