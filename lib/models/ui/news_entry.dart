import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_news/models/db/db_news.dart';
import 'package:reddit_news/models/network/news_children_data.dart';

part 'news_entry.freezed.dart';

@freezed
class NewsEntry with _$NewsEntry {
  const factory NewsEntry(
      {required String id,
      required String title,
      required String selftext,
      required String thumbnail}) = _NewsEntry;

  factory NewsEntry.fromNetowrkModel(NewsChildrenData data) => NewsEntry(
      id: data.id,
      title: data.title,
      selftext: data.selftext,
      thumbnail: data.thumbnail);

  factory NewsEntry.fromDbModel(DbNews data) => NewsEntry(
      id: data.redditId,
      title: data.title,
      selftext: data.selftext,
      thumbnail: data.thumbnail);
}
