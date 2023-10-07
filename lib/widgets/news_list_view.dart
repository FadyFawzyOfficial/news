import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const NewsTile(),
    );
  }
}
