import 'dart:ui';

class ProductDetails {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

  ProductDetails({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.title,
    required this.price,
    required this.description,
    this.isFavourite=false,
    this.isPopular=false,
  });
}
const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";