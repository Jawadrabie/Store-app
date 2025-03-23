class ProdectModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel Rating;

  ProdectModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.Rating});

  factory ProdectModel.Fromjson(jsonData) {
    return ProdectModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"],
        description: jsonData["description"],
        category: jsonData["category"],
        image: jsonData["image"],
        Rating: RatingModel.Fromjson(jsonData["rating"]));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.Fromjson(jsonData) {
    return RatingModel(rate: jsonData["rate"], count: jsonData["count"]);
  }
}

// class ProdectModel {
//   final int id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;
//   final ratingModel rating;
//
//   ProdectModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.rating,
//   });
//
//   factory ProdectModel.Fromjson(jsonData) {
//     return ProdectModel(
//         id: jsonData["id"],
//         title: jsonData["title"],
//         price: jsonData["price"],
//         description: jsonData["description"],
//         category: jsonData["category"],
//         image: jsonData["image"],
//         rating: ratingModel.Fromjson(jsonData["rate"]));
//   }
// }
//
// class ratingModel {
//   final String rate;
//   final String count;
//
//   ratingModel({
//     required this.rate,
//     required this.count,
//   });
//
//   factory ratingModel.Fromjson(jsonData) {
//     return ratingModel(rate: jsonData["rate"], count: jsonData[("count")]);
//   }
// }
