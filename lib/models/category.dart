const categories = [
  Category(name: 'Health', image: 'assets/images/health.avif'),
  Category(name: 'Sports', image: 'assets/images/sports.avif'),
  Category(name: 'Science', image: 'assets/images/science.avif'),
  Category(name: 'General', image: 'assets/images/general.avif'),
  Category(name: 'Business', image: 'assets/images/business.avif'),
  Category(name: 'Technology', image: 'assets/images/technology.jpeg'),
  Category(name: 'Entertainment', image: 'assets/images/entertainment.avif'),
];

class Category {
  final String name;
  final String image;

  const Category({
    required this.name,
    required this.image,
  });
}
