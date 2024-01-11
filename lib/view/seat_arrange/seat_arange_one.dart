import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moovbe_app/view/core/colors.dart';

import '../widgets/custom_driver_card.dart';
import '../widgets/seat_layout_widget.dart';

class SeatArangeOne extends StatelessWidget {
  const SeatArangeOne({super.key});

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
            CustomDriverCard(size: size),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
                      SeatLayoutWidget(size: size, type: 1),
                      SeatLayoutWidget(size: size, type: 1),
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
