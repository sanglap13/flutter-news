import 'package:flutter/material.dart';
import 'package:flutter_news_api_app/style/colors/app_color.dart';
import 'package:flutter_news_api_app/style/dimen/app_dimen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/home_controller.dart';
import '../widget/home_article_list_item.dart';

class HomeView extends StatelessWidget {
  static const name = '/home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: kBackgroundColor,
      ),
      backgroundColor: kBackgroundColor,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: kHeight * 15,
              // color: Colors.red,
              width: double.maxFinite,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: kWidth * 2.5),
              child: Text(
                "Headlines",
                style: GoogleFonts.poppins(
                  color: kTextColor,
                  fontSize: 36.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Obx(() {
              return Visibility(
                visible: controller.isLoading.value,
                replacement: Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final author = controller.articles[index].author;
                      final title = controller.articles[index].title;
                      final desc = controller.articles[index].desc;
                      final img = controller.articles[index].imagUrl;
                      return ArticleListItem(
                        author: author,
                        title: title,
                        desc: desc,
                        imgUrl: img ?? "",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: controller.articles.length,
                  ),
                ),
                child: CircularProgressIndicator(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
