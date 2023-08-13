import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/repository/reddit_repository.dart';

class NewsNotifier extends StateNotifier<Future<List<NewsEntry>>> {
  NewsNotifier(Future<List<NewsEntry>> data) : super(data);

  void loadData(String? query) {
    state = locator.get<RedditRepository>().getNews(query);
  }
}
