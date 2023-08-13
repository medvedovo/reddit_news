import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/repository/reddit_repository.dart';
import 'package:reddit_news/states/news_notifier.dart';
import 'package:reddit_news/widgets/center_text.dart';
import 'package:reddit_news/widgets/loading_indicator.dart';

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
        child: FutureBuilder<List<NewsEntry>>(
            future: ref.watch(newsProvider),
            builder: (BuildContext context,
                AsyncSnapshot<List<NewsEntry>> snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const LoadingIndicator();
              }
              if (snapshot.hasError) {
                return CenterText(message: snapshot.error.toString());
              }
              if (snapshot.hasData && snapshot.data != null) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final news = snapshot.data!.elementAt(index);
                    return ListTile(
                      title: Text(news.title),
                      subtitle: Text(news.selftext),
                    );
                  },
                );
              } else {
                return const CenterText(message: 'Получен пустой список');
              }
            }));
  }
}
