import 'package:dio/dio.dart';
import 'package:flutter_news_api_app/api/adapter/api_adapter.dart';
import 'package:flutter_news_api_app/api/models/article/article_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _api = ApiAdapter();
  final isLoading = false.obs;
  final articles = <ArticleModel>[].obs;
  @override
  void onReady() async {
    super.onReady();
    await fetchHeadlines();
  }

  Future<void> fetchHeadlines() async {
    isLoading.value = true;
    try {
      var query = {
        'country': 'us',
        'apiKey': '0735cd899a4546aca5cfdbc08d4fbab1',
        'category': 'business',
      };
      var response = await _api.getHeadlines(queries: query);

      articles.assignAll(response.articles);
    } on DioException catch (e) {
      print(e);
      articles.clear();
    }
    isLoading.value = false;
  }

  //  Future<BaseResponse> userRegistrationApiCall(dynamic body) async {
  //   BaseResponse response;
  //   try {
  //     response = await api.socialRegistration(body: body);
  //   } on DioException catch (e) {
  //     response = BaseResponse.fromException(e);
  //   }
  //   return response;
  // }
}
