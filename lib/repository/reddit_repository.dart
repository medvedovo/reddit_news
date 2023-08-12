import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/network/reddit_service.dart';

class RedditRepository {
  Future<List<NewsEntry>> getNews(String? query) async {
    var redditService = locator.get<RedditService>();
    final response = (query == null
        ? await redditService.getNews()
        : await redditService.searchNews(query));

    if (!response.isSuccess || response.data == null) {
      throw Exception(
          'При получении списка новостей возникла ошибка: ${response.error}');
    }

    if (response.data != null && response.data!.isEmpty) {
      throw Exception('По вашему запросу ничего не найдено');
    }

    return response.data!;
  }
}
