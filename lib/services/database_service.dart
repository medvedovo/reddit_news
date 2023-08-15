import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reddit_news/models/db/db_news.dart';

class DatabaseService {
  late Future<Isar> db;

  DatabaseService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([DbNewsSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> insertNews(List<DbNews> users) async {
    final isar = await db;
    await isar.writeTxn(() => isar.dbNews.putAll(users));
  }

  Future<List<DbNews>> getNews() async {
    final isar = await db;
    return isar.dbNews.filter().redditIdIsNotEmpty().findAll();
  }
}
