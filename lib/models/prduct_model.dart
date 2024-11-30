class ProductModel {
  final int id;
  final double price;
  final String description;
  final String category;
  final String title;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.category,
    required this.id,
    required this.image,
    required this.description,
    required this.title,
    required this.price,
    required this.rating
  });

  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
        id: jsondata["id"],
        category: jsondata["category"],
        price: jsondata["price"],
        title: jsondata["title"],
        image: jsondata["image"],
        description: jsondata["description"], 
        rating: RatingModel.fromJson(jsondata["rating"]));
        
  }
}

class RatingModel {
  final int count;
  final double rate;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsondata) {
    return RatingModel(count: jsondata["count"], rate: jsondata["rate"]);
  }
}
