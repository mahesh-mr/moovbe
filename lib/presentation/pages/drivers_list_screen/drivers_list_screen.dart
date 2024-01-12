import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe_app/presentation/core/colors.dart';
import '../../controller/drivers_list_provider.dart';
import '../add_driver_screen/add_driver_screen.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_list_tile.dart';
import '../seat_layout/three_seater_layout.dart';
import '../seat_layout/two_seater_layout.dart';

class DriversListScreen extends StatelessWidget {
  DriversListScreen({super.key});
  final driversList = Get.put(DriversList());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Driver List"),
      ),
      body: Obx(() {
        if (driversList.loading.value) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (driversList.allDriversList.isEmpty) {
          const Center(
            child: Text("No Drivers Found"),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.01),
                child: Text(
                  '${driversList.allDriversList.length} Drivers Found',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                )),
            SizedBox(
                height: size.height * 0.52,
                child: ListView.separated(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, inx) {
                      final data = driversList.allDriversList[inx];
                      return CustomListTaile(
                        tailOnpressed: () {
                          if (inx % 2 == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  TwoSeaterLayout(index: inx),
                              ));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  ThreeSeaterLayout(index: inx),
                              ));
                        }
                        },
                        onPressed: () {
                          alertBoxWidget(context, inx);
                        },
                        size: size,
                        title: data.name!,
                        subTitle: data.licenseNo!,
                        image: 'assets/person.png',
                        btntitle: 'Delete',
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: size.height * 0.02,
                        ),
                    itemCount: driversList.allDriversList.length)),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.03),
                  child: CustomButton(
                    height: size.height * 0.06,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddDriversScreen(),
                        ),
                      );
                    },
                    title: 'Add Driver',
                  ),
                ),
              ),
            )
          ],
        );
      }),
    );
  }

  Future<dynamic> alertBoxWidget(BuildContext context, int inx) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Do you Want Delete?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                driversList.deletedriver(
                    driverId: driversList.allDriversList[inx].id.toString());
                driversList.grtDrivers();
                Navigator.pop(context);
              },
              child: const Text(
                "Delete",
                style: TextStyle(
                  color: appRed,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
 