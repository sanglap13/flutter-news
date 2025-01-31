import 'package:flutter_news_api_app/api/models/article/article_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'totalResult')
  final int? result;

  @JsonKey(name: 'articles')
  final List<ArticleModel> articles;

  @JsonKey(name: 'code')
  final String? code;

  @JsonKey(name: 'message')
  final String? message;

  BaseResponse({
    required this.status,
    required this.result,
    required this.articles,
    required this.code,
    required this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

// dart run build_runner build --delete-conflicting-outputs
