import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/locator.dart';
import 'package:reddit_news/main.dart';
import 'package:reddit_news/network/reddit_service.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Новости'),
        actions: [
          IconButton(
              onPressed: () async =>
                  await locator.get<RedditService>().getNews(),
              icon: const Icon(Icons.cloud_download)),
          IconButton(
              onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
              icon: Icon(ref.watch(themeProvider) == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode))
        ],
      ),
      body: const Text('Тут будут новости'),
    );
  }
}
