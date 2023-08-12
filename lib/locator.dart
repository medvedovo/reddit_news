import 'package:get_it/get_it.dart';
import 'package:reddit_news/network/reddit_service.dart';

final locator = GetIt.instance;

void setupDI() {
  locator.registerLazySingleton<RedditService>(() => RedditService());
}
