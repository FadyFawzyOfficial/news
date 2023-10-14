import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'services/news_service.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    NewsService(dio: Dio()).getNews();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
