import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/appState/app_start_provider.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/constants/app_constants.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/home/home_screen.dart';

class MyNumberPage extends ConsumerStatefulWidget {
  static const String routeName = 'my-number';

  const MyNumberPage({super.key});

  @override
  ConsumerState<MyNumberPage> createState() => _MyNumberPageState();
}

class _MyNumberPageState extends ConsumerState<MyNumberPage>
    with TickerProviderStateMixin {
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
      backgroundColor: AppColor.bgColor,
      body: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              image: DecorationImage(
                image: AssetImage(Assets.images.navBarTop.path),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 60,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconButton(
                          onPressed: () {
                            log("message");
                            context.pop();
                          },
                          icon: const Icon(Icons.arrow_back),
                          color: AppColor.white,
                        ),
                      ),
                      Text("My Numbers",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColor.white,
                          )),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -30,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 65,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 25,
                            spreadRadius: 1),
                      ],
                    ),
                    width: ScreenSize.width(context) - 20,
                    child: TabBar(
                      controller: _controller,
                      isScrollable: false,
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.darkGreen),
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
                            "Post Combinations",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: _controller.index == 0
                                  ? AppColor.white
                                  : AppColor.grey,
                            ),
                          ),
                        ),
                        Tab(
                          height: 45,
                          child: Text(
                            "Favorite Numbers",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: _controller.index == 1
                                  ? AppColor.white
                                  : AppColor.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: [
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
              ),
              SizedBox()
            ]),
          ),
        ],
      ),
    );
  }

  void onSubmit() {
    if (_formKey.currentState!.validate()) {
      setState(() {});
      ref.read(appStartProvider.notifier).setVerified();
      context.pushReplacementNamed(HomeScreen.routeName);
      sharedPrefs!.setBool("isLogin", true);
    }
  }
}
