import 'dart:developer';

import 'package:get/get.dart';
import 'package:moovbe_app/data/add_driver_service.dart';

import '../../data/drivers_list_service.dart';
import '../../domain/drivers_list.dart';

class DriversList extends GetxController {
  var loading = false.obs;

  RxList<DriverList> allDriversList = <DriverList>[].obs;

  Future<List<DriverList>?> grtDrivers() async {
    try {
      update();
      var data = await DriversListService.getPostService();
      loading.value = false;
      update();
      allDriversList.value = data!;
      return allDriversList;
    } catch (e) {
      log("msg :$e");
      log('catch bloc called');
      loading.value = false;
    }
    return null;
  }

  Future<List<DriverList>?> deletedriver({
    required String driverId,
  }) async {
    try {
      await AddDriversService.deleteDriverServ(driverId: driverId);
      log("delete =======");
    } catch (e) {
      Get.snackbar("sorry", "$e");
    }
    return null;
  }

  @override
  void onReady() {
    grtDrivers();
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
    grtDrivers();
    update();
  }
}
