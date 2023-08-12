import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_container.dart';

part 'reddit_response.freezed.dart';

@freezed
class RedditResponse with _$RedditResponse {
  const factory RedditResponse(
      {required bool isSuccess,
      NewsContainer? data,
      String? error}) = _RedditResponse;
}
