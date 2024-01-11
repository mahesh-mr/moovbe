// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../widgets/custom_button.dart';
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
                    return Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: size.height * 0.1,
                          //  color: appYellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.23,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage('assets/bus2.png')),
                                    color: appGrey),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'KSRTC',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "Swift Scania P-​series",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: size.width * 0.02),
                                child: CustomButton(
                                  height: size.height * 0.04,
                                  width: size.width * 0.02,
                                  onPressed: () {},
                                  title: "Manage",
                                  radius: 5,
                                ),
                              )
                              // CustomButton(
                              //     height: size.height*0.02,
                              //     width: size.width*0.02,
                              //     onPressed: () {

                              //     },
                              //     title: 'Manage',
                              //     )
                            ],
                          ),
                        ));
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
