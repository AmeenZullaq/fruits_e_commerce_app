import 'dart:io';
import 'package:e_commerce_app/features/home/data/models/review_model.dart';
import 'package:e_commerce_app/features/home/domain/entities/product_entity.dart';

class ProductModel {
  final String name;
  final String code;
  final String price;
  final File image;
  final String? imageUrl;
  final bool isFeatured;
  num avgRating = 0;
  int ratingCount = 0;
  final num sellingCount;
  final String description;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitWeight;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.name,
    required this.code,
    required this.price,
    required this.image,
    required this.imageUrl,
    required this.isFeatured,
    required this.avgRating,
    required this.sellingCount,
    required this.ratingCount,
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
      image: json['image'],
      imageUrl: json['imageUrl'],
      isFeatured: json['isFeatured'],
      avgRating: json['avgRating'],
      sellingCount: json['sellingCount'],
      ratingCount: json['ratingCount'],
      description: json['description'],
      expirationMonths: json['expirationMonths'],
      isOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitWeight: json['unitWeight'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)),
            )
          : [],
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      price: price,
      image: image,
      isFeatured: isFeatured,
      avgRating: avgRating,
      sellingCount: sellingCount,
      ratingCount: ratingCount,
      description: description,
      expirationMonths: expirationMonths,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitWeight: unitWeight,
      reviews: reviews.map((e) => e.toEntity()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'price': price,
      'image': image,
      'imageUrl': imageUrl,
      'isFeatured': isFeatured,
      'avgRating': avgRating,
      'sellingCount': sellingCount,
      'ratingCount': ratingCount,
      'description': description,
      'expirationMonths': expirationMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitWeight': unitWeight,
      'reviews': reviews,
    };
  }
}
