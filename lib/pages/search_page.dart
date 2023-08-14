import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/repository/reddit_repository.dart';
import 'package:reddit_news/states/news_notifier.dart';
import 'package:reddit_news/widgets/news_list.dart';

final searchProvider =
    StateNotifierProvider<NewsNotifier, Future<List<NewsEntry>>>(
        (ref) => NewsNotifier(Future.value(List.empty())));

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const TextField(),
        Expanded(
            child: NewsList(
                future: locator.get<RedditRepository>().getNews('cat')))
      ],
    );
  }
}
