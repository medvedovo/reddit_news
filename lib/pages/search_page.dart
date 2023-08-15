import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/repository/reddit_repository.dart';
import 'package:reddit_news/states/news_notifier.dart';
import 'package:reddit_news/utils/debouncer.dart';
import 'package:reddit_news/pages/widgets/news_list.dart';

final searchProvider =
    StateNotifierProvider<NewsNotifier, Future<List<NewsEntry>>>((ref) =>
        NewsNotifier(
            Future.value(locator.get<RedditRepository>().getNews(''))));

class SearchPage extends ConsumerStatefulWidget {
  final TextEditingController textEditingController;
  const SearchPage({super.key, required this.textEditingController});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Поиск по Reddit',
          ),
          onChanged: (value) => _debouncer
              .run(() => ref.read(searchProvider.notifier).loadData(value)),
          controller: widget.textEditingController,
        ),
        Expanded(
            child: NewsList(
          future: ref.watch(searchProvider),
          searchQuery: widget.textEditingController.text,
        ))
      ],
    );
  }
}
