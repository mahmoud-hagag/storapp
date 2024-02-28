class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String image;
  final String category;
  bool isFavorite;
  ProductModel({
    required this.isFavorite, 
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'].toString(),
      description: jsonData['description'],
      image: jsonData['image'],
      category: jsonData['category'],
      isFavorite: false,
    );
  }
}
