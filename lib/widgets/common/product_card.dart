import 'package:flutter/material.dart';
import 'package:omillionare/models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:   BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
            ),
          ],
        ),
        child: Card(
          surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
          color: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          child: InkWell(
            highlightColor: const Color.fromRGBO(255, 255, 255, 1),
            splashColor: const Color.fromARGB(12, 0, 0, 0),
            onTap: () {
              // homeBloc.add(SetProduct(productId: product.title));
              // homeBloc.add(SingleProductState());
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
              child: SizedBox(
                width: 150,
                height: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(product!.image.toString(),
                          fit: BoxFit.contain, width: 120, height: 120),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 55,
                      child: Text(product!.title.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 25, 25, 25),
                              fontWeight: FontWeight.w700)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product!.price.toString() +
                          ' ' +
                          product!.currency.toString(),
                      style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 84, 189, 114),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
