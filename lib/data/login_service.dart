
import 'dart:developer';
import 'package:get_storage/get_storage.dart';
import 'core/dio_clint.dart';
import 'core/token_storage.dart';

class LoginService {
  static Future<String?> login({
    required String username,
    required String password,
  }) async {
    try {
      var response = await DioClient.dio
          .post('LoginApi', data: {"username": username, "password": password});

      // if (response.statusCode == 200) {
      //   final result = jsonDecode(response.data);
      //   final LoginModel model = LoginModel.fromJson(result);
      final storage = GetStorage();
      storage.write('token', response.data['access']);
      storage.write('uId', response.data['url_id'].toString());
      String? token = GetLocalStorage.getUserIdAndToken('token');
      String? userId = GetLocalStorage.getUserIdAndToken('uId');
      print("${token}======================= tkn");
      print("${userId}======================= uid");
      log("data:  ${response.data}");
      return "successfully logged In !!";
    } catch (e) {
      log("data:  $e");
    }
    return null;
  }
}
