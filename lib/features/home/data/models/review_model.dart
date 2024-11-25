import 'package:e_commerce_app/features/home/domain/entities/review_entity.dart';

class ReviewModel {
  final String image;
  final String name;
  final num avgRating;
  final String date;
  final String reviewDescription;

  ReviewModel({
    required this.image,
    required this.name,
    required this.avgRating,
    required this.date,
    required this.reviewDescription,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      image: json['image'],
      name: json['name'],
      avgRating: json['avgRating'],
      date: json['date'],
      reviewDescription: json['reviewDescription'],
    );
  }
  ReviewEntity toEntity() {
    return ReviewEntity(
      image: image,
      name: name,
      avgRating: avgRating,
      date: date,
      reviewDescription: reviewDescription,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'avgRating': avgRating,
      'date': date,
      'reviewDescription': reviewDescription,
    };
  }
}
