import 'package:flutter/material.dart';
import 'package:news/widgets/news_tile.dart';

import '../widgets/categories_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text.rich(
          TextSpan(
            text: 'News',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: ' Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
      body: const NewsTile(),
    );
  }
}