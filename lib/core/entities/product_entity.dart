import 'package:e_commerce_app/core/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String code;
  final num price;
  final String imageUrl;
  final num avgRating;
  final bool isFeatured;
  final num sellingCount;
  final String description;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitWeight;
  final List<ReviewEntity>? reviews;

  ProductEntity({
    required this.avgRating,
    required this.imageUrl,
    required this.name,
    required this.code,
    required this.price,
    required this.isFeatured,
    required this.sellingCount,
    required this.description,
    required this.expirationMonths,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitWeight,
    required this.reviews,
  });
}
