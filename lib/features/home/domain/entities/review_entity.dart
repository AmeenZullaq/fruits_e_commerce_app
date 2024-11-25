class ReviewEntity {
  final String image;
  final String name;
  final num avgRating;
  final String date;
  final String reviewDescription;

  ReviewEntity({
    required this.image,
    required this.name,
    required this.avgRating,
    required this.date,
    required this.reviewDescription,
  });
}
