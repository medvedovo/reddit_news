import 'package:flutter/material.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/widgets/center_text.dart';
import 'package:reddit_news/widgets/loading_indicator.dart';
import 'package:reddit_news/widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  final Future<List<NewsEntry>> future;
  const NewsList({super.key, required this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsEntry>>(
        future: future,
        builder:
            (BuildContext context, AsyncSnapshot<List<NewsEntry>> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const LoadingIndicator();
          }
          if (snapshot.hasError) {
            return CenterText(message: snapshot.error.toString());
          }
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                final news = snapshot.data!.elementAt(index);
                return NewsTile(data: news);
              },
            );
          } else {
            return const CenterText(message: 'Получен пустой список');
          }
        });
  }
}
