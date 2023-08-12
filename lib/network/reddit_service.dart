import 'package:dio/dio.dart';
import 'package:reddit_news/models/network/news_container.dart';
import 'package:reddit_news/models/network/reddit_response.dart';

final dio = Dio();

class RedditService {
  Future<RedditResponse> getNews() async {
    final response = await dio.get('https://reddit.com/r/flutterdev/new.json');
    final data = NewsContainer.fromJson(response.data);
    return RedditResponse(
        isSuccess: response.statusCode == 200,
        data: data,
        error: response.statusMessage);
  }

  Future<RedditResponse> searchNews(String query) async {
    final response =
        await dio.get('http://www.reddit.com/search.json?q=$query');
    final data = NewsContainer.fromJson(response.data);
    return RedditResponse(
        isSuccess: response.statusCode == 200,
        data: data,
        error: response.statusMessage);
  }
}
