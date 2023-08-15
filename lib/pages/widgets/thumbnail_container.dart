import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:reddit_news/pages/widgets/thumbnail_placeholder.dart';

class ThumbnailContainer extends StatelessWidget {
  final String url;
  const ThumbnailContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return url.startsWith('https://')
        ? CachedNetworkImage(
            imageUrl: url,
            width: MediaQuery.of(context).size.width,
            height: 180,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => const ThumbnailPlaceholder(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        : const ThumbnailPlaceholder();
  }
}
