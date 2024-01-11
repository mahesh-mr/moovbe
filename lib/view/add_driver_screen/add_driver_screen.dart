import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moovbe_app/view/home_screen/home_screen.dart';

import '../core/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_form.dart';

class AddDriversScreen extends StatelessWidget {
  const AddDriversScreen({super.key});

  @override
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
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.015),
            child: CustomFomField(titles: 'Enter Name'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.015),
            child: CustomFomField(titles: 'Enter License Numeber'),
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
                        builder: (context) => HomeScreen(),
                      ),
                    );
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
