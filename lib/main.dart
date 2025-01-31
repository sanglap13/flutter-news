import 'package:flutter/material.dart';
import 'package:flutter_news_api_app/ui/splash/view/splash_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'binding/data_bindings.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460.8, 1024.0),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Q-Check',
          initialBinding: DataBinding(),
          // theme: kAppTheme,
          initialRoute: SplashView.name,
          getPages: getPages,
          builder: (context, child) {
            var mediaQuery = MediaQuery.of(context);
            return MediaQuery(
              data: mediaQuery.copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: child!,
            );
          },
          home: child,
        );
      },
      // child: const SplashView(),
    );
  }
}