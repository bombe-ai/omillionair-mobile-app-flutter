import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/home/play_now_home.dart';
import 'package:omillionare/modules/home/shop_now_home.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
    _controller.index = 1;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Container(
              //   height: ScreenSize.height(context),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: AppColor.white,
              //     image: DecorationImage(
              //       image: AssetImage(Assets.images.navBarTop.path),
              //       fit: BoxFit.fitWidth,
              //       alignment: Alignment.topCenter,
              //     ),
              //   ),
              // ),
              Column(children: [
                CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          Assets.images.homeFirstBanner.path,
                          height: 400,
                          width: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      aspectRatio: 1,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: ScreenSize.width(context) - 20,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TabBar(
                        controller: _controller,
                        isScrollable: false,
                        dividerColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: _controller.index == 0
                                ? AppColor.kPrimary
                                : AppColor.yellow),
                        onTap: (value) {
                          _controller.index = value;
                          setState(() {});
                        },
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        tabs: [
                          Tab(
                            height: 45,
                            child: Text(
                              "SHOP NOW",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: _controller.index == 0
                                    ? AppColor.white
                                    : AppColor.kPrimary,
                              ),
                            ),
                          ),
                          Tab(
                            height: 45,
                            child: Text(
                              "PLAY NOW",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: _controller.index == 1
                                    ? AppColor.black
                                    : AppColor.kPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: _controller.index == 0 ? 1400 : 1250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
                        child: Text(
                          "GO GREEN. GET FURTHER",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                            controller: _controller,
                            children: const [
                              ShopNowTab(),
                              PlayNowTab(),
                            ]),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
