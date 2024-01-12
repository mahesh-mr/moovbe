import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/drivers_list_provider.dart';
import '../core/colors.dart';

class CustomDriverCard extends StatelessWidget {
  CustomDriverCard({
    super.key,
    required this.size,
    required this.index,
  });

  final Size size;
  final int index;
  final driversList = Get.put(DriversList());
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
            children: [
              Text(
                driversList.allDriversList[index].name!,
                style: const TextStyle(
                    fontSize: 32,
                    color: appBackground,
                    fontWeight: FontWeight.bold),
              ),
              Text(
               "License no : ${driversList.allDriversList[index].licenseNo!}",
                style: const TextStyle(
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
