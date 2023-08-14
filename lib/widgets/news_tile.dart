import 'package:flutter/material.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/widgets/thumbnail_container.dart';

class NewsTile extends StatelessWidget {
  final NewsEntry data;
  const NewsTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ThumbnailContainer(url: data.thumbnail),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  if (data.selftext.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        Text(data.selftext, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
