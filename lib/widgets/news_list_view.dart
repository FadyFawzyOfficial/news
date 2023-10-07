import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
      itemCount: 10,
      itemBuilder: (context, index) => const NewsTile(),
    );
  }
}
