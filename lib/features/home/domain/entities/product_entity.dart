import 'dart:io';
import 'package:e_commerce_app/features/home/domain/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String code;
  final String price;
  final File image;
  final String? imageUrl;
  final bool isFeatured;
  final num avgRating;
  final int ratingCount;
  final num sellingCount;

  final String description;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitWeight;
  final List<ReviewEntity> reviews;

  ProductEntity({
    this.imageUrl,
    required this.name,
    required this.code,
    required this.price,
    required this.image,
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
}
