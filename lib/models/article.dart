import 'dart:convert';

class Article {
  final String title;
  final String subtitle;
  final String image;

  const Article({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source));

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'],
      subtitle: map['description'] ?? '',
      image: map['urlToImage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': subtitle,
      'urlToImage': image,
    };
  }
}
