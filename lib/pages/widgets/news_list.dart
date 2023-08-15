import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/pages/widgets/center_text.dart';
import 'package:reddit_news/pages/widgets/news_tile.dart';
import 'package:reddit_news/pages/widgets/shimmer_placeholder.dart';

class NewsList extends ConsumerWidget {
  final String? searchQuery;
  final Future<List<NewsEntry>> future;
  const NewsList({super.key, required this.future, required this.searchQuery});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<List<NewsEntry>>(
        future: future,
        builder:
            (BuildContext context, AsyncSnapshot<List<NewsEntry>> snapshot) {
          Widget widget = ListView(
              key: const Key('shimmer'),
              padding: const EdgeInsets.only(top: 10),
              children:
                  List.generate(3, (index) => const ShimmerPlaceholder()));
          if (snapshot.hasError) {
            widget = CenterText(
                key: const Key('error'), message: snapshot.error.toString());
          }
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!.isEmpty &&
                snapshot.connectionState == ConnectionState.done) {
              if (searchQuery?.isEmpty ?? false) {
                widget = const CenterText(
                    key: Key('start'), message: 'Начните поиск');
              } else {
                widget = const CenterText(
                    key: Key('nothing'),
                    message: 'По вашему запросу ничего не найдено');
              }
            } else {
              widget = ListView.builder(
                key: const Key('datalist'),
                padding: const EdgeInsets.only(top: 10),
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  final news = snapshot.data!.elementAt(index);
                  return NewsTile(data: news);
                },
              );
            }
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              widget = const CenterText(
                  key: Key('nodata'), message: 'Данные не получены');
            }
          }
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300), child: widget);
        });
  }
}
