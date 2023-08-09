import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/pages/home_page.dart';
import 'package:reddit_news/states/theme_notifier.dart';
import 'package:reddit_news/theme.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
    (ref) => ThemeNotifier(ThemeMode.light));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Новости с Reddit',
      theme: customLight(),
      darkTheme: customDark(),
      themeMode: ref.watch(themeProvider),
      home: const HomePage(),
    );
  }
}
