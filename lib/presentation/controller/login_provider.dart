// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:moovbe_app/data/login_service.dart';

// import '../../domain/login_model.dart';

// class LoginProvider extends ChangeNotifier {
//   bool loding = false;
//   bool isBack = false;
//   Future<LoginModel?> postLogin(LoginModel model) async {
//     try {
//       loding = true;
//       notifyListeners();
//       var data = LoginService.login(model);
//       isBack = true;
//       loding = false;
//       return data;
//     } catch (e) {
//       log("e : $e");
//     }
//     return null;
//   }
// }
