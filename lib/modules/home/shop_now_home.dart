import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:omillionare/modules/home/controller/home_controller.dart';
import 'package:omillionare/widgets/common/product_card.dart';

class ShopNowTab extends ConsumerStatefulWidget {
  const ShopNowTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShopNowTabState();
}

class _ShopNowTabState extends ConsumerState<ShopNowTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = ref.watch(homeControllerProvider);
    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              axisDirection: AxisDirection.down,
              children: List.generate(
                homeController.products.length,
                (index) {
                  return ProductCard(product: homeController.products[index]);
                },
              )),
          const SizedBox(height: 20),
          Text(
            "LIMITED OFFERS",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: AppColor.black,
            ),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.asset(
              Assets.images.advertise1.path,
              fit: BoxFit.cover,
              width: ScreenSize.width(context),
              height: 175,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "GO GREEN. GET FURTHER",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: AppColor.black,
            ),
          ),
          const SizedBox(height: 20),
          StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              axisDirection: AxisDirection.down,
              children: List.generate(
                homeController.products.length,
                (index) {
                  return ProductCard(product: homeController.products[index]);
                },
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
