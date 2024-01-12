class Product {
  final int id;
  final String title;
  final String images;
  var price;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
  });
  factory Product.fromJson(var json){
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      images: json['image'],
    );
  }
}