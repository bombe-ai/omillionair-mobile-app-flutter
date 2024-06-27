import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:omillionare/modules/home/controller/home_controller.dart';

class PlayNowTab extends ConsumerStatefulWidget {
  const PlayNowTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlayNowTabState();
}

class _PlayNowTabState extends ConsumerState<PlayNowTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = ref.watch(homeControllerProvider);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.playNowBanner1.path,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.playNowBanner1.path,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.playNowBanner1.path,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: const Alignment(0.9, 0.6),
                  colors: [AppColor.lightPrimary, AppColor.kPrimary]),
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NEX DRAW DATE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: AppColor.yellow,
                      ),
                    ),
                    Text(
                      "MAY 16,2024",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  homeController.time,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
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
            "OUR WINNERS",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: AppColor.black,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              axisDirection: AxisDirection.down,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.winner1.path,
                    fit: BoxFit.cover,
                    width: ScreenSize.width(context),
                    height: 250,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.winner2.path,
                    fit: BoxFit.cover,
                    width: ScreenSize.width(context),
                    height: 275,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.winner3.path,
                    fit: BoxFit.cover,
                    width: ScreenSize.width(context),
                    height: 250,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    Assets.images.winner1.path,
                    fit: BoxFit.cover,
                    width: ScreenSize.width(context),
                    height: 275,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
