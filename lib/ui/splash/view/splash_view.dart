import 'package:flutter/material.dart';
import 'package:flutter_news_api_app/style/dimen/app_dimen.dart';
import 'package:flutter_news_api_app/ui/splash/controller/splash_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../style/colors/app_color.dart';

class SplashView extends StatelessWidget {
  static const name = '/splash';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SvgPicture.asset(
                //   'assets/svg/icon_altor_logo.svg',
                //   height: kHeight * 10,
                //   width: kHeight * 10,
                // ),
                // SizedBox(
                //   height: kHeight * 2,
                // ),
                Container(
                  color: Colors.red,
                  child: Text(
                    "Altor News",
                    style: GoogleFonts.nosifer(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: kHeight * 6,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
