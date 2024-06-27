import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/modules/dashboard/controller/dashboard_controller.dart';
import 'package:omillionare/modules/home/controller/home_controller.dart';
import 'package:omillionare/widgets/common/product_card.dart';
import 'package:omillionare/widgets/dashboard_page/home_body_carousel.dart';
import 'package:omillionare/models/Product.dart';

class ShopNow extends ConsumerStatefulWidget {
  ShopNow({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShopNowState();
}

class _ShopNowState extends ConsumerState<ShopNow> {
  @override
  Widget build(BuildContext context) {
    final homeController = ref.watch(homeControllerProvider);

    return Container(
      width: double.infinity,
      // height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        // color: Colors.black54,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Text(
                "GO GREEN. Get Further",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )),
          const SizedBox(height: 20),
          Center(
            child: showAppropriateWidget(homeController.products),
          ),
          const SizedBox(height: 40),
          Container(
            child: BodyCarousel(),
          ),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Text(
                "GO GREEN. Get Further",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )),
          const SizedBox(height: 20),
          Center(
            child: showAppropriateWidget(homeController.products),
          ),
        ],
      ),
    );
  }

  Widget showAppropriateWidget(List<Product> products) {
    if (products.isNotEmpty) {
      return Wrap(
        spacing: 8.0,
        runSpacing: 16.0,
        children: [
          ...products.map((e) => ProductCard(product: e)),
        ],
      );
    } else {
      return Text('No Data Available');
    }
  }
}
