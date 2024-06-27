import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/models/Cart.dart';
import 'package:omillionare/models/Product.dart';

final homeControllerProvider = ChangeNotifierProvider<HomeController>((ref) {
  return HomeController();
});

class HomeController extends ChangeNotifier {
  late Timer _timer;
  int _milliseconds = 8 * 60 * 60 * 1000; // 8 hours in milliseconds
  String time = "";

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_milliseconds > 0) {
        _milliseconds -= 1000; // Decrease by 1000 milliseconds (1 second)
        int hours = _milliseconds ~/ (60 * 60 * 1000);
        int minutes = (_milliseconds ~/ (60 * 1000)) % 60;
        int seconds = (_milliseconds ~/ 1000) % 60;

        time = '${hours.toString().padLeft(2, '0')}:'
            '${minutes.toString().padLeft(2, '0')}:'
            '${seconds.toString().padLeft(2, '0')}';
      } else {
        _timer.cancel();
      }
      notifyListeners();
    });
  }

  int homePageActiveIndex = 0;
  Cart? cart;
  Product? selectedProduct;
  List<Product> products = [
    Product(
      title: 'Eco-Friendly Tea Tree and Sage Candle',
      image: 'assets/images/product-1.png',
      price: '29',
    ),
    Product(
      title: 'Eco-Friendly T-Shirt',
      image: 'assets/images/product-2.png',
      price: '40',
    ),
    Product(
      title: 'Eco-Friendly Tea Tree and Sage Candle 2',
      image: 'assets/images/product-3.png',
      price: '50',
    ),
    Product(
      title: 'Eco-Friendly T-Shirt 2',
      image: 'assets/images/product-1.png',
      price: '90',
    ),
  ];

  static final Product tmpProduct = Product(
      title: 'Eco-Friendly Tea Tree and Sage Candle',
      image: 'assets/images/product-1.png',
      price: '29',
      description:
          'Illuminate your space with our Eco-Friendly Tea Tree and Sage Candle. Hand-poured with natural soy wax, it offers a clean, long-lasting burn free of harmful toxins.');

  static final Cart tmpCart = Cart(
      product: Product(
          title: 'Eco-Friendly Tea Tree and Sage Candle TMP',
          image: 'assets/images/product-1.png',
          price: '29',
          description:
              'Illuminate your space with our Eco-Friendly Tea Tree and Sage Candle. Hand-poured with natural soy wax, it offers a clean, long-lasting burn free of harmful toxins.'),
      quantity: 1);

  // HomeState({
  //   this.homePageActiveIndex = 0,
  //   selectedProduct,
  //   cart,
  //   products,
  // });

  // HomeState({
  //   this.homePageActiveIndex = 0,
  //   Product? selectedProduct,
  //   Cart? cart,
  //   List<Product>? products,
  // })  : selectedProduct = selectedProduct ?? tmpProduct,
  //       cart = cart ?? tmpCart,
  //       products = products ?? [
  //         Product(title: 'Eco-Friendly Tea Tree and Sage Candle', image: 'assets/images/product-1.png', price: '29',),
  //         Product(title: 'Eco-Friendly T-Shirt', image: 'assets/images/product-2.png', price: '40',),
  //         Product(title: 'Eco-Friendly Tea Tree and Sage Candle 2', image: 'assets/images/product-3.png', price: '50',),
  //         Product(title: 'Eco-Friendly T-Shirt 2', image: 'assets/images/product-1.png', price: '90',),
  //       ];

  // HomeState copyWith({
  //   int? homePageActiveIndex,
  //   Product? selectedProduct,
  //   Cart? cart,
  //   List<Product>? products
  // }) {
  //   return HomeState(
  //     homePageActiveIndex: homePageActiveIndex ?? this.homePageActiveIndex,
  //     selectedProduct: selectedProduct ?? this.selectedProduct,
  //     cart: cart ?? this.cart,
  //     products: products ?? this.products,
  //   );
  // }

  @override
  List get props => [
        homePageActiveIndex,
        selectedProduct,
        cart,
        products,
      ];
}
