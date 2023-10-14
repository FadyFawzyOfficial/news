import 'package:dio/dio.dart';

import '../models/article.dart';

class NewsService {
  final Dio dio;

  NewsService({
    required this.dio,
  });

  Future<List<Article>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=3c88955c487e4d9db668f011dd85e737&country=us&category=$category');
      List<Article> articles = List.from(
          response.data['articles'].map((article) => Article.fromMap(article)));
      return articles;
    } catch (e) {
      return [];
    }
  }
}
