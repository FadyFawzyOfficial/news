import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  @override
  Widget build(context) {
    return FutureBuilder(
      future: NewsService(dio: Dio()).getNews(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
            ? const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()))
            : snapshot.data!.isEmpty
                ? const SliverFillRemaining(
                    child: Center(
                        child: Text('There was an error, try again later')),
                  )
                : NewsListView(articles: snapshot.data!);
      },
    );
  }
}
