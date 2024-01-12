import 'package:dio/dio.dart';
import 'package:moovbe_app/data/core/token_storage.dart';

import '../domain/drivers_list.dart';
import 'core/dio_clint.dart';

class DriversListService {
  static Future<List<DriverList>?> getPostService() async {
    String? token = GetLocalStorage.getUserIdAndToken("token");
    String? userId = GetLocalStorage.getUserIdAndToken('uId');

    try {
      var response = await DioClient.dio.get(
        "DriverApi/$userId/",
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      DriversListModel driversListModel =
          DriversListModel.fromJson(response.data);
print(driversListModel.driverList!.length);
      return driversListModel.driverList;
    } on DioError catch (e) {
      print(e.message);
      print(e.response!.data);
      print(e.type);
      print(e);
    } catch (e) {
      print(e);
    }
  }
}
