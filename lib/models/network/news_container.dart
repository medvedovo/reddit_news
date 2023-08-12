import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_news/models/network/news_data.dart';

part 'news_container.freezed.dart';
part 'news_container.g.dart';

@freezed
class NewsContainer with _$NewsContainer {
  const factory NewsContainer({required String kind, required NewsData data}) =
      _NewsContainer;

  factory NewsContainer.fromJson(Map<String, Object?> json) =>
      _$NewsContainerFromJson(json);
}
