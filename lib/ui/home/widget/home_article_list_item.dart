import 'package:flutter/material.dart';
import 'package:flutter_news_api_app/style/colors/app_color.dart';
import 'package:flutter_news_api_app/style/dimen/app_dimen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleListItem extends StatelessWidget {
  final String imgUrl;
  final String? title;
  final String? desc;
  final String? author;
  const ArticleListItem({
    super.key,
    this.imgUrl = "https://images.axios.com/qvYl9qjEfutMLjZYprJeKQqGPrs=/0x0:1344x756/1366x768/2025/01/29/1738178308254.png",
    required this.title,
    required this.author,
    this.desc = "",
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      // color: Colors.red,
      height: kHeight * 24,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: kHeight * 20,
              child: Column(
                children: [
                  Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                    height: kHeight * 10,
                    width: kWidth * 10,
                  ),
                  SizedBox(
                    height: kHeight,
                  ),
                  Text(
                    "Autho: $author",
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              // color: Colors.brown,
              child: Column(
                children: [
                  Text(
                    title!,
                    style: GoogleFonts.poppins(
                      color: kTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: kHeight,
                  ),
                  Text(
                    desc!,
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 209, 209, 209),
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
