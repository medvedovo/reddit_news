import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_news/main.dart';
import 'package:reddit_news/pages/news_page.dart';
import 'package:reddit_news/pages/search_page.dart';

final currentTabProvider = StateProvider<int>((ref) => 0);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FlutterNativeSplash.remove();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Новости'),
          actions: [
            IconButton(
                onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
                icon: Icon(ref.watch(themeProvider) == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode))
          ],
        ),
        body: <Widget>[
          const NewsPage(),
          SearchPage(
            textEditingController: TextEditingController(),
          )
        ][ref.watch(currentTabProvider)],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            ref.read(currentTabProvider.notifier).state = index;
          },
          selectedIndex: ref.watch(currentTabProvider),
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.newspaper),
              label: 'Новости',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Поиск',
            ),
          ],
        ));
  }
}
