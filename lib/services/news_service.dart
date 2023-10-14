import 'package:dio/dio.dart';

import '../models/article.dart';

class NewsService {
  final Dio dio;

  NewsService({
    required this.dio,
  });

  Future<List<Article>> getNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=3c88955c487e4d9db668f011dd85e737&country=us&category=general');
    List<Article> articles = List.from(
        response.data['articles'].map((article) => Article.fromMap(article)));
    return articles;
  }
}
