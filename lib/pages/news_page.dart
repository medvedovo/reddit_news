import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/repository/reddit_repository.dart';
import 'package:reddit_news/states/news_notifier.dart';
import 'package:reddit_news/pages/widgets/news_list.dart';

final newsProvider =
    StateNotifierProvider<NewsNotifier, Future<List<NewsEntry>>>(
        (ref) => NewsNotifier(locator.get<RedditRepository>().getNews(null)));

class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          ref.read(newsProvider.notifier).loadData(null);
        },
        child: NewsList(
          future: ref.watch(newsProvider),
          searchQuery: null,
        ));
  }
}
