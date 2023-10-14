import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<Article>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews();
  }

  @override
  Widget build(context) {
    return FutureBuilder(
      future: future,
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
