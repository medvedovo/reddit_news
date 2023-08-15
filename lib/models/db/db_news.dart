import 'package:isar/isar.dart';
import 'package:reddit_news/models/ui/news_entry.dart';

part 'db_news.g.dart';

@Collection()
class DbNews {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  String redditId;
  String title;
  String selftext;
  String thumbnail;

  DbNews(this.redditId, this.title, this.selftext, this.thumbnail);

  factory DbNews.fromUiModel(NewsEntry data) =>
      DbNews(data.id, data.title, data.selftext, data.thumbnail);
}
