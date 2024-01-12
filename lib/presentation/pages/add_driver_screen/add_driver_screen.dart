import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:moovbe_app/data/add_driver_service.dart';
import 'package:moovbe_app/presentation/pages/home_screen/home_screen.dart';

import '../../controller/drivers_list_provider.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form.dart';
import '../drivers_list_screen/drivers_list_screen.dart';

class AddDriversScreen extends StatelessWidget {
  AddDriversScreen({super.key});

  final nameController = TextEditingController();

  final licenceController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  final driversList = Get.put(DriversList());

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Driver'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.015),
                  child: CustomFomField(
                      textinputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter valid Nmae";
                        } else {
                          return null;
                        }
                      },
                      controller: nameController,
                      titles: 'Enter Name'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.015),
                  child: CustomFomField(
                      textinputType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter valid License";
                        } else {
                          return null;
                        }
                      },
                      controller: licenceController,
                      titles: 'Enter License Numeber'),
                )
              ],
            ),
          ),
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
                    bool isValid = formKey.currentState!.validate();
                    print(nameController.text);

                    if (isValid) {
                      AddDriversService.addDrivers(
                              username: nameController.text,
                              licenseId: licenceController.text)
                          .then((value) {
                        if (value == "successfully created new driver") {
                          driversList.grtDrivers();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DriversListScreen(),
                            ),
                          );
                        }
                      });
                    }
                  },
                  title: 'Save',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
