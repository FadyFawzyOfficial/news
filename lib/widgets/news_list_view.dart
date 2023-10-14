import 'package:flutter/material.dart';

import '../models/article.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<Article> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => NewsTile(article: articles[index]),
        childCount: articles.length,
      ),
    );
  }
}
