import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const NewsTile(),
        childCount: 10,
      ),
    );
    // return SliverList.builder(
    //   itemBuilder: (context, index) => const NewsTile(),
    //   itemCount: 10,
    // );
  }
}
