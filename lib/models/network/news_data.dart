import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_news/models/network/news_children.dart';

part 'news_data.freezed.dart';
part 'news_data.g.dart';

@freezed
class NewsData with _$NewsData {
  const factory NewsData({required List<NewsChildren> children}) = _NewsData;

  factory NewsData.fromJson(Map<String, Object?> json) =>
      _$NewsDataFromJson(json);
}
