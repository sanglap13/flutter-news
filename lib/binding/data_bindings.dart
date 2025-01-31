import 'package:get/get.dart';

import '../service/db/db_service.dart';
import '../service/image_service/image_service.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DbService());
    Get.put(ImageService());
    // Get.put(AuthService());
    // Get.put(AppBluetoothService());
    // Get.put(CheckoutService());
  }
}
