class ItemModel {
  final String title;
  final String subTitle;
  final String trailing;
  final int? number;

  const ItemModel({
    this.number,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });
}
