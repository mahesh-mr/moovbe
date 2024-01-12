import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moovbe_app/data/login_service.dart';
import 'package:moovbe_app/presentation/core/colors.dart';
import 'package:moovbe_app/presentation/widgets/custom_text_form.dart';
import 'package:moovbe_app/presentation/widgets/custom_button.dart';

import '../home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bg.png',
                    ),
                    fit: BoxFit.cover)),
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
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.015),
                  child: CustomFomField(
                      textinputType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter valid userNmae";
                        } else {
                          return null;
                        }
                      },
                      controller: userNameController,
                      titles: 'Enter Username'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.015),
                  child: CustomFomField(
                      textinputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "enter valid Password";
                        } else {
                          return null;
                        }
                      },
                      controller: passwordController,
                      titles: 'Enter Password'),
                ),
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

                    if (isValid) {
                      LoginService.login(
                              username: userNameController.text,
                              password: passwordController.text)
                          .then((value) {
                        if (value == "successfully logged In !!") {
                          final storage = GetStorage();

                          final tok = storage.read('token');
                          log("tok : $tok");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      });
                    }
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
