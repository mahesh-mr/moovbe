import 'package:flutter/material.dart';
import 'package:moovbe_app/view/core/colors.dart';
import 'package:moovbe_app/view/widgets/custom_text_form.dart';
import 'package:moovbe_app/view/widgets/custom_button.dart';

import '../home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: double.infinity,
            color: appBlack,
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.07, bottom: size.height * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: appBackground,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Manage your Bus and Drivers',
                    style: TextStyle(
                      color: appBackground,
                      fontSize: 16,
                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.015),
            child: CustomFomField(titles: 'Enter Username'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.height * 0.015),
            child: CustomFomField(titles: 'Enter Password'),
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
                  title: 'Login',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
