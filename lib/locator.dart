import 'package:get_it/get_it.dart';
import 'package:reddit_news/network/reddit_service.dart';
import 'package:reddit_news/repository/reddit_repository.dart';
import 'package:reddit_news/utils/preferences_helper.dart';

final locator = GetIt.instance;

void setupDI() {
  locator.registerLazySingleton<PreferencesHelper>(() => PreferencesHelper());
  locator.registerLazySingleton<RedditService>(() => RedditService());
  locator.registerLazySingleton<RedditRepository>(() => RedditRepository());
}
