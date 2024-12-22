import 'package:e_commerce_app/core/helper_functions/get_avg_rating.dart';
import 'package:e_commerce_app/core/models/review_model.dart';
import 'package:e_commerce_app/core/entities/product_entity.dart';

class ProductModel {
  final String name;
  final String code;
  final num price;
  final String imageUrl;
  final bool isFeatured;
  final num sellingCount;
  final num avgRating;
  final String description;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitWeight;
  final List<ReviewModel>? reviews;

  ProductModel({
    required this.avgRating,
    required this.name,
    required this.code,
    required this.price,
    required this.imageUrl,
    required this.isFeatured,
    required this.sellingCount,
    required this.description,
    required this.expirationMonths,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitWeight,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      isFeatured: json['isFeatured'],
      sellingCount: json['sellingCount'],
      description: json['description'],
      expirationMonths: json['expirationMonths'],
      isOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitWeight: json['intunitWeight'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)),
            )
          : [],
      avgRating: getAvgRating(
        json['reviews'] != null
            ? List<ReviewModel>.from(
                json['reviews'].map((e) => ReviewModel.fromJson(e)),
              )
            : [],
      ),
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      imageUrl: imageUrl,
      name: name,
      code: code,
      price: price,
      isFeatured: isFeatured,
      sellingCount: sellingCount,
      description: description,
      expirationMonths: expirationMonths,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitWeight: unitWeight,
      avgRating: avgRating,
      reviews: reviews?.map((e) => e.toEntity()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'price': price,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'sellingCount': sellingCount,
      'description': description,
      'expirationMonths': expirationMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitWeight': unitWeight,
      'reviews': reviews,
      'avgRating': avgRating,
    };
  }
}
