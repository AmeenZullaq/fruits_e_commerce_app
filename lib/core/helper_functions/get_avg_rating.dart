num getAvgRating(List<dynamic> reviews) {
  if (reviews.isNotEmpty) {
    num totalRatings = 0;
    for (var review in reviews) {
      totalRatings = totalRatings + review.rating;
    }
    return totalRatings / reviews.length;
  }
  return 0;
}
