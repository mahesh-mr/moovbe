
import 'package:flutter/material.dart';

import '../core/colors.dart';

class CustomDriverCard extends StatelessWidget {
  const CustomDriverCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Rohit sharma',
                style: TextStyle(
                    fontSize: 32,
                    color: appBackground,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'License no: PJ515196161655',
                style: TextStyle(
                  fontSize: 14,
                  color: appBackground,
                ),
              )
            ],
          ),
          Image.asset('assets/profile.png')
        ],
      ),
    );
  }
}
