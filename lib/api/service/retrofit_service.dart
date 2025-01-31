import 'package:dio/dio.dart';
import 'package:flutter_news_api_app/api/models/base/base_response.dart';
import 'package:flutter_news_api_app/api/utils/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_service.g.dart';

// const tokenRequired = Extra({kAppendToken: true});

@RestApi(baseUrl: kBaseURL)
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String baseUrl}) = _RetrofitService;

  @GET(kHeadlines)
  Future<BaseResponse> getHeadlines(@Queries() Map<String, dynamic> queries);
}
