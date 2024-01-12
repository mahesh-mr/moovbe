import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moovbe_app/domain/drivers_list.dart';
import 'package:moovbe_app/presentation/controller/drivers_list_provider.dart';

import 'core/dio_clint.dart';
import 'core/token_storage.dart';

class AddDriversService {
  final driversList = Get.put(DriversList());
  static Future<String?> addDrivers({
    required String username,
    required String licenseId,
  }) async {
    String? token = GetLocalStorage.getUserIdAndToken('token');
    String? userId = GetLocalStorage.getUserIdAndToken('uId');
    try {
      var response = await DioClient.dio.post(
        'DriverApi/$userId/',
        data: {"name": username, "license_no": licenseId},
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      if (response.statusCode == 200) {
        print("called");
      }

      log("data:  ${response.data}");
      return "successfully created new driver";
    } catch (e) {
      log("data:  $e");
    }
  }

  static Future<List<DriverList>?> deleteDriverServ({
    required String driverId,
  }) async {
    String? token = GetLocalStorage.getUserIdAndToken('token');
    String? userId = GetLocalStorage.getUserIdAndToken('uId');

    try {
      var response = await DioClient.dio.delete(
        'DriverApi/$userId/',
        data: {"driver_id": driverId},
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      DriversListModel driversListModel = DriversListModel.fromJson(
        response.data,
      );
      print(response.data);

      return driversListModel.driverList;
    } on DioError catch (e) {
      print(e.response!.data);
      print(e.error);
      print(e.message);
    }
    return null;
  }
}
