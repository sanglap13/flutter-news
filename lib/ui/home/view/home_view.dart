import 'package:flutter/material.dart';
import 'package:flutter_news_api_app/style/colors/app_color.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  static const name = '/home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
