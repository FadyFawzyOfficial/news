import 'package:flutter/material.dart';

import '../screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;

  const CategoryCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryScreen(
            categoryName: name,
          ),
        ),
      ),
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              image,
              width: 200,
              fit: BoxFit.cover,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
