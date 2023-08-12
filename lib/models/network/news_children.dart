import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_news/models/network/news_children_data.dart';

part 'news_children.freezed.dart';
part 'news_children.g.dart';

@freezed
class NewsChildren with _$NewsChildren {
  const factory NewsChildren(
      {required String kind, required NewsChildrenData data}) = _NewsChildren;

  factory NewsChildren.fromJson(Map<String, Object?> json) =>
      _$NewsChildrenFromJson(json);
}
