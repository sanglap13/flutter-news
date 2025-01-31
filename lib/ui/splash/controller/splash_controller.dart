import 'dart:developer';

import 'package:flutter_news_api_app/ui/home/view/home_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    log("onInit ${Get.height} ${Get.width}");
  }

  @override
  void onReady() async {
    // TODO: implement onInit
    super.onReady();
    log("onReady");

    await Future.delayed(
      5.seconds,
      () => Get.offNamed(HomeView.name),
    );
  }

  @override
  void onClose() {
    // TODO: implement onInit
    super.onClose();
    log("onClose");
  }
}
