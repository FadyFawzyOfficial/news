import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(0),
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
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
