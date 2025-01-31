import 'package:flutter_news_api_app/api/models/source/source_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  @JsonKey(name: 'source')
  final SourceModel? source;

  @JsonKey(name: 'author')
  final String? author;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? desc;

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'urlToImage')
  final String? imagUrl;

  @JsonKey(name: 'publishedAt')
  final String? publishedAt;

  ArticleModel({
    required this.source,
    required this.author,
    required this.title,
    required this.desc,
    required this.url,
    required this.imagUrl,
    required this.publishedAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
