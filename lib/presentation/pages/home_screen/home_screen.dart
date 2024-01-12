// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../drivers_list_screen/drivers_list_screen.dart';
import '../../widgets/custom_list_tile.dart';
import '../seat_layout/three_seater_layout.dart';
import '../seat_layout/two_seater_layout.dart';
import 'widgets/custom_grid_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Image.asset(
          height: size.height * 0.04,
          'assets/logo.png',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.03),
                child: CustomGridCard(
                    onTap: () {},
                    size: size,
                    title: 'Bus',
                    subTitle: 'Manage your Bus',
                    img: 'assets/bus1.png',
                    bgColor: appRed),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, right: size.width * 0.05),
                child: CustomGridCard(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DriversListScreen(),
                        ),
                      );
                    },
                    size: size,
                    title: 'Driver',
                    subTitle: 'Manage your Driver',
                    img: 'assets/profile.png',
                    bgColor: appBlack),
              ))
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const Text(
              '21 Buses Found',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomListTaile(
                      tailOnpressed: () {},
                      onPressed: () {},
                      size: size,
                      title: 'KSRTC',
                      subTitle: "Swift Scania P-​series",
                      image: 'assets/bus2.png',
                      btntitle: "Manage",
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 21))
        ],
      ),
    );
  }
}
