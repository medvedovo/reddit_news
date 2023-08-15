import 'package:dio/dio.dart';
import 'package:reddit_news/models/network/reddit_response.dart';

final dio = Dio();

class RedditService {
  Future<RedditResponse> getNews() async {
    final response = await dio.get('https://reddit.com/r/flutterdev/new.json');
    return RedditResponse.fromNetworkResponse(response);
  }

  Future<RedditResponse> searchNews(String query) async {
    final response =
        await dio.get('http://www.reddit.com/search.json?q=$query');
    return RedditResponse.fromNetworkResponse(response);
  }
}
