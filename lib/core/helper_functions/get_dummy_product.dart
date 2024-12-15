import 'package:e_commerce_app/features/home/domain/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'apple',
    code: '123',
    price: 29.4,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ718nztPNJfCbDJjZG8fOkejBnBAeQw5eAUA&s',
    isFeatured: true,
    sellingCount: 100,
    description: 'This is a dummy product',
    expirationMonths: 12,
    isOrganic: false,
    numberOfCalories: 250,
    unitWeight: 500,
    reviews: [],
    avgRating: 0,
  );
}

List<ProductEntity> getdummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
