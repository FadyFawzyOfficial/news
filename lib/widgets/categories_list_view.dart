import 'package:flutter/material.dart';

import '../models/category.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(name: category.name, image: category.image);
        },
      ),
    );
  }
}
