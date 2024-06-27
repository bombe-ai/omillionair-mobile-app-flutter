import 'package:omillionare/models/Product.dart';

class Cart {
  final Product product;
  final int quantity;
  Cart({
    required this.product,
    this.quantity = 1,
  });
}