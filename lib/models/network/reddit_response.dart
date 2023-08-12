import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_news/models/ui/news_entry.dart';

import 'news_container.dart';

part 'reddit_response.freezed.dart';

@freezed
class RedditResponse with _$RedditResponse {
  const factory RedditResponse(
      {required bool isSuccess,
      List<NewsEntry>? data,
      String? error}) = _RedditResponse;

  factory RedditResponse.fromNetworkResponse(Response<dynamic> response) =>
      RedditResponse(
          isSuccess: response.statusCode == 200,
          data: NewsContainer.fromJson(response.data)
              .data
              .children
              .map((e) => NewsEntry.fromNetowrkModel(e.data))
              .toList(),
          error: response.statusMessage);
}
