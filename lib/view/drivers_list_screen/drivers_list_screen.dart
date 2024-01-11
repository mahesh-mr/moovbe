import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe_app/view/core/colors.dart';

import '../add_driver_screen/add_driver_screen.dart';
import '../login_screen/login_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_list_tile.dart';

class DriversListScreen extends StatelessWidget {
  const DriversListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        title: Text("Driver List"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.01),
            child: const Text(
              '21 Drivers Found',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.52,
            child: ListView.separated(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomListTaile(
                    size: size,
                    title: 'Rohit sharma',
                    subTitle: "Licn no: PJ5151961616",
                    image: 'assets/person.png',
                    btntitle: 'Delete',
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: size.height * 0.02,
                    ),
                itemCount: 21),
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
      ),
    );
  }
}
