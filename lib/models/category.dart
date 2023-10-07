const categories = [
  Category(name: 'Entertainment', image: 'assets/images/entertainment.avif'),
  Category(name: 'Technology', image: 'assets/images/technology.avif'),
  Category(name: 'Business', image: 'assets/images/business.avif'),
  Category(name: 'General', image: 'assets/images/general.avif'),
  Category(name: 'Science', image: 'assets/images/science.avif'),
  Category(name: 'Sports', image: 'assets/images/sports.avif'),
  Category(name: 'Health', image: 'assets/images/health.avif'),
];

class Category {
  final String name;
  final String image;

  const Category({
    required this.name,
    required this.image,
  });
}
