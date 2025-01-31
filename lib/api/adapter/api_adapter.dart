import 'package:dio/dio.dart';
import 'package:flutter_news_api_app/api/utils/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../models/base/base_response.dart';
import '../service/retrofit_service.dart';

class ApiAdapter {
  final _name = "ApiAdapter";

  final dio = Dio(
    BaseOptions(
      baseUrl: kBaseURL,
      contentType: Headers.jsonContentType,
      validateStatus: (int? status) {
        return status != null;
        // return status != null && status >= 200 && status < 300;
      },
    ),
  );

  // String? token;
  late RetrofitService _retrofitService;

  ApiAdapter() {
    if (!kLiveMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          compact: false,
          responseHeader: true,
        ),
      );
    }

    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);
    _retrofitService = RetrofitService(dio);
  }

  /// social login api call
  Future<BaseResponse> getHeadlines({required dynamic queries}) {
    return _retrofitService.getHeadlines(queries);
  }
}
