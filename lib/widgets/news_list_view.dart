import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';
import '../services/news_service.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  late final List<Article> articles;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(dio: Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => NewsTile(article: articles[index]),
        // childCount: articles.length,
      ),
    );
    // return SliverList.builder(
    //   itemBuilder: (context, index) => const NewsTile(),
    //   itemCount: 10,
    // );
  }
}
