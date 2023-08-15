import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/models/db/db_news.dart';
import 'package:reddit_news/models/ui/news_entry.dart';
import 'package:reddit_news/services/database_service.dart';
import 'package:reddit_news/services/reddit_service.dart';

class RedditRepository {
  Future<List<NewsEntry>> getNews(String? query) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    var databaseService = locator.get<DatabaseService>();

    if ([ConnectivityResult.mobile, ConnectivityResult.wifi]
        .contains(connectivityResult)) {
      var redditService = locator.get<RedditService>();
      final response = (query == null
          ? await redditService.getNews()
          : await redditService.searchNews(query));

      if (query == null && response.isSuccess && response.data != null) {
        databaseService.insertNews(
            response.data!.map((e) => DbNews.fromUiModel(e)).toList());
      }

      if (!response.isSuccess || response.data == null) {
        throw Exception(
            'При получении списка новостей возникла ошибка: ${response.error}');
      }

      if (query == null && response.data != null && response.data!.isEmpty) {
        return databaseService.getNews().then(
            (value) => value.map((e) => NewsEntry.fromDbModel(e)).toList());
      }

      return response.data!;
    } else {
      if (query != null) {
        throw Exception('Для поиска необходимо подключение к сети');
      }
      return databaseService
          .getNews()
          .then((value) => value.map((e) => NewsEntry.fromDbModel(e)).toList());
    }
  }
}
