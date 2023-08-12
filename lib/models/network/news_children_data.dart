import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_children_data.freezed.dart';
part 'news_children_data.g.dart';

@freezed
class NewsChildrenData with _$NewsChildrenData {
  const factory NewsChildrenData(
      {required String id,
      required String title,
      required String selftext,
      required String thumbnail}) = _NewsChildrenData;

  factory NewsChildrenData.fromJson(Map<String, Object?> json) =>
      _$NewsChildrenDataFromJson(json);
}
