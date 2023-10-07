import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CategoryCard(
          title: 'Business',
          image: 'assets/images/business.avif',
        ),
      ),
    );
  }
}
