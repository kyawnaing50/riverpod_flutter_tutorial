import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/product.dart';

part 'product_provider.g.dart';

const List<Product> allProducts = [
  Product(
      id: '1',
      title: 'Groovy Shorts',
      price: 12,
      image: 'assets/products/shorts.png'),
  Product(
      id: '2',
      title: 'Karati kit',
      price: 34,
      image: 'assets/products/karati.png'),
  Product(
      id: '3',
      title: 'Denis Jeans',
      price: 60,
      image: 'assets/products/jeans.png'),
  Product(
      id: '4',
      title: 'Red Backpack',
      price: 54,
      image: 'assets/products/backpack.png'),
  Product(
      id: '5',
      title: 'Drum & Sticks',
      price: 70,
      image: 'assets/products/drum.png'),
  Product(
      id: '6',
      title: 'Blue Suitcase',
      price: 47,
      image: 'assets/products/suitcase.png'),
  Product(
      id: '7', title: 'Skates', price: 72, image: 'assets/products/skates.png'),
  Product(
      id: '8',
      title: 'Guitar Gallery',
      price: 59,
      image: 'assets/products/guitar.png'),
];

// final productsProvider = Provider((ref) => allProducts);
@riverpod
List<Product> products(ref) {
  return allProducts;
}

// final reduceProductProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 50).toList();
// });
@riverpod
List<Product> reduceProduct(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}
