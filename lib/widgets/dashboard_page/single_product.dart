import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/models/Product.dart';
import 'package:omillionare/modules/home/controller/home_controller.dart';

class SingleProduct extends ConsumerStatefulWidget {
  SingleProduct({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SingleProductState();
}

class _SingleProductState extends ConsumerState<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    final homeController = ref.watch(homeControllerProvider);

    Product? product = homeController.selectedProduct;

    return product == null
        ? Container()
        : Container(
            padding:
                const EdgeInsets.only(bottom: 10, top: 0, left: 35, right: 35),
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(product.image,
                      fit: BoxFit.contain, width: 150, height: 150),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 220,
                      child: Text(product.title,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(51, 51, 51, 1))),
                    ),
                    Row(
                      children: [
                        Text('${product.price}',
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: Color.fromRGBO(82, 189, 114, 1))),
                        const SizedBox(width: 5),
                        Text('${product.currency}',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Color.fromRGBO(82, 189, 114, 1))),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text("Description:",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(119, 119, 119, 1))),
                const SizedBox(height: 7),
                Text(product.description ?? "",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(119, 119, 119, 1))),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCounter(context, homeController),
                    ProductBuyNow(context),
                  ],
                ),
              ],
            ),
          );
  }

  Widget ProductCounter(BuildContext context, HomeController homeController) {
    return Container(
      height: 55,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(17, 0, 0, 0),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: const Color.fromARGB(255, 0, 182, 18),
              foregroundColor: const Color.fromRGBO(1, 233, 25, 0.678),
            ),
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          SizedBox(
            width: 20,
            child: Center(
                child: Text('${homeController.cart?.quantity ?? 1}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold))),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: const Color.fromARGB(255, 0, 182, 18),
              foregroundColor: const Color.fromRGBO(1, 233, 25, 0.678),
            ),
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget ProductBuyNow(BuildContext context) {
    return InkWell(
      onTap: () {},
      // splashColor: Color.fromRGBO(1, 126, 51, 0.425),
      splashFactory: InkRipple.splashFactory,
      child: Container(
        height: 55,
        width: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(0, 182, 18, 1),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(17, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'BUY NOW',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
