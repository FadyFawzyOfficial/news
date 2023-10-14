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
  var isLoading = true;
  late final List<Article> articles;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(dio: Dio()).getNews();
    setState(() => isLoading = false);
  }

  @override
  Widget build(context) {
    return isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : articles.isEmpty
            ? const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text('There was an error, try again later'),
                ),
              )
            : NewsListView(articles: articles);
    // return SliverList.builder(
    //   itemBuilder: (context, index) => const NewsTile(),
    //   itemCount: 10,
    // );
  }
}
