import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  const CategoryScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: categoryName,
          ),
        ],
      ),
    );
  }
}
