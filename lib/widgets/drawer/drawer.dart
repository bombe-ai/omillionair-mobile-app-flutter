import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/dashboard/dashboard_screen.dart';
import 'package:omillionare/modules/myNumber/my_number.dart';
import 'package:omillionare/widgets/buttons/rounded_button.dart';

import '../../main.dart';

class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({super.key});

  @override
  ConsumerState<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<AppDrawer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.bgColor,
      shadowColor: AppColor.black,
      elevation: 4,
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.transparent,
          )),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 225,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Assets.images.navBarTop.path,
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          scaffoldKey.currentState?.closeEndDrawer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.close_rounded,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.lightGrey, width: 2),
                                  color: AppColor.kPrimary,
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                Assets.svg.transparentLogo.path,
                                color: AppColor.white,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.lightGrey, width: 2),
                                      color: AppColor.kPrimary,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: AppColor.white,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brooklyn Simmons",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Sample subheadline",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -35,
                child: Container(
                  height: 75,
                  width: 275,
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColor.kPrimary,
                      AppColor.yellow,
                    ]),
                    // border: Border.all(
                    //   color: AppColor.white,
                    // ),
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 25,
                          spreadRadius: 1),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BALANCE",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColor.kPrimary,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "AED 0.00",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColor.kPrimary,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                  btnColor: AppColor.yellow,
                  borderRadius: 24,
                  width: 110,
                  height: 45,
                  onTap: () {},
                  childWidget: const Text(
                    "BUY NOW",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  )),
              RoundedButton(
                  btnColor: AppColor.white,
                  borderColor: AppColor.kPrimary,
                  borderRadius: 24,
                  width: 150,
                  height: 45,
                  onTap: () {},
                  childWidget: const Text(
                    "REDEEM GIFT CARD",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ))
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                _createDrawerItem(
                    index: 1,
                    imagePath: Assets.svg.drawerIcons.profile.path,
                    text: 'My Profile',
                    route: "",
                    children: [
                      DrawerSubItem(
                        name: "My Numbers",
                        route: MyNumberPage.routeName,
                        iconPath: Assets.svg.drawerIcons.number123.path,
                      ),
                      DrawerSubItem(
                        name: "My Wallet",
                        route: "",
                        iconPath: Assets.svg.drawerIcons.wallet.path,
                      ),
                      DrawerSubItem(
                        name: "My Notifications",
                        route: "",
                        iconPath: Assets.svg.drawerIcons.notification.path,
                      ),
                      DrawerSubItem(
                        name: "My Transactions",
                        route: "",
                        iconPath: Assets.svg.drawerIcons.transaction.path,
                      ),
                    ]),
                _createDrawerItem(
                  index: 2,
                  imagePath: Assets.svg.drawerIcons.prize.path,
                  text: 'Draw Results',
                  route: "",
                ),
                _createDrawerItem(
                  index: 3,
                  imagePath: Assets.svg.drawerIcons.pricebreak.path,
                  text: 'Prize Breakdown',
                  route: '',
                ),
                _createDrawerItem(
                  index: 4,
                  imagePath: Assets.svg.drawerIcons.live.path,
                  text: 'Live Watch',
                  route: '',
                ),
                _createDrawerItem(
                  index: 5,
                  imagePath: Assets.svg.drawerIcons.aboutUs.path,
                  text: 'About Us',
                  route: '',
                ),
                _createDrawerItem(
                  index: 6,
                  imagePath: Assets.svg.drawerIcons.term.path,
                  text: 'Terms and Conditions',
                  route: '',
                ),
                _createDrawerItem(
                  index: 6,
                  imagePath: Assets.svg.drawerIcons.support.path,
                  text: 'Support',
                  route: '',
                ),
                _createDrawerItem(
                  index: 7,
                  imagePath: Assets.svg.drawerIcons.logot.path,
                  text: 'Logout',
                  route: '',
                ),
                const SizedBox(height: 25)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required String imagePath,
      required int index,
      String? text,
      required String route,
      List<DrawerSubItem>? children}) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: AppColor.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
            ),
            height: 60,
            child: InkWell(
              onTap: () {
                if (children == null) {
                  context.pushReplacementNamed(route);
                  if (DeviceType.isMobile(context)) {
                    scaffoldKey.currentState?.closeDrawer();
                  }
                  isExpanded = false;
                } else {
                  isExpanded = !isExpanded;
                }

                setState(() {});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    child: SvgPicture.asset(
                      imagePath,
                      color: AppColor.kPrimary,
                      height: 25,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text ?? "",
                      style: TextStyle(
                        color: AppColor.textGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (children != null)
                    SizedBox(
                      width: 50,
                      child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: (child, anim) =>
                              RotationTransition(
                                turns: isExpanded
                                    ? Tween<double>(begin: 1, end: 1)
                                        .animate(anim)
                                    : Tween<double>(begin: 1, end: 1)
                                        .animate(anim),
                                child:
                                    FadeTransition(opacity: anim, child: child),
                              ),
                          child: isExpanded
                              ? const Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                )
                              : const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                )),
                    ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            height:
                (children != null && isExpanded) ? (children.length * 55) : 0,
            duration: const Duration(milliseconds: 200),
            child: Column(children: [
              if (children != null && isExpanded)
                ...List.generate(
                  children.length,
                  (cIndex) {
                    bool ischildActive = GoRouterState.of(context)
                        .fullPath!
                        .contains("/${children[cIndex].route}");

                    return InkWell(
                      onTap: () {
                        if (!ischildActive) {
                          context.pushReplacementNamed(children[cIndex].route);
                          if (DeviceType.isMobile(context)) {
                            scaffoldKey.currentState?.closeDrawer();
                          }
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 35),
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 50,
                              child: SvgPicture.asset(
                                children[cIndex].iconPath,
                                color: AppColor.kPrimary,
                                height: 25,
                              ),
                            ),
                            Text(
                              children[cIndex].name,
                              style: TextStyle(
                                color: AppColor.textGrey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            ]),
          )
        ],
      ),
    );
  }
}

class DrawerSubItem {
  final String name;
  final String route;
  final String iconPath;

  DrawerSubItem(
      {required this.iconPath, required this.name, required this.route});
}
