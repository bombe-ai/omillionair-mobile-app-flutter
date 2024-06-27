import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/dashboard/dashboard_screen.dart';

import '../../main.dart';

class AppDrawer extends ConsumerStatefulWidget {
  const AppDrawer({super.key});

  @override
  ConsumerState<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends ConsumerState<AppDrawer> {
  int _currIndex = -1;
  bool isExpanded = false;
  int? _hoveredRowIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.white,
      shadowColor: AppColor.black,
      elevation: 4,
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.transparent,
          )),
      child: SingleChildScrollView(
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
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                padding: EdgeInsets.all(10),
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
                                            color: AppColor.lightGrey,
                                            width: 2),
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
                          SizedBox(
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
                    width: 250,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 25,
                          spreadRadius: 5
                        ),
                      ],
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
                          height: 10,
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
                )
              ],
            ),
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                // _createDrawerItem(
                //   index: 0,
                //   imagePath: Assets.svg.analytics.path,
                //   text: 'Analytics',
                //   route: '/analytics',
                // ),
                // _createDrawerItem(
                //     index: 1,
                //     imagePath: Assets.svg.vehicles.path,
                //     text: 'Vehicles',
                //     route: VehiclesPage.routeName,
                //     children: [
                //       DrawerSubItem(
                //           name: "All Vehicles", route: VehiclesPage.routeName),
                //       DrawerSubItem(
                //           name: "Vehicles Directory",
                //           route: VehicleDirectory.routeName),
                //     ]),
                // _createDrawerItem(
                //   index: 2,
                //   imagePath: Assets.svg.trips.path,
                //   text: 'Trips',
                //   route: TripsPage.routeName,
                // ),
                // _createDrawerItem(
                //   index: 3,
                //   imagePath: Assets.svg.alerts.path,
                //   text: 'Alerts',
                //   route: '/alerts',
                // ),
                // _createDrawerItem(
                //   index: 4,
                //   imagePath: Assets.svg.scores.path,
                //   text: 'Reports',
                //   route: '/reports',
                // ),
                // _createDrawerItem(
                //   index: 5,
                //   imagePath: Assets.svg.geofence.path,
                //   text: 'Geofence',
                //   route: GeofencePage.routeName,
                // ),
                // _createDrawerItem(
                //   index: 6,
                //   imagePath: Assets.svg.devices.path,
                //   text: 'Devices',
                //   route: DevicePage.routeName,
                // ),
                // _createDrawerItem(
                //   index: 7,
                //   imagePath: Assets.svg.support.path,
                //   text: 'Support',
                //   route: '/support',
                // ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {required String imagePath,
      required int index,
      String? text,
      required String route,
      List<DrawerSubItem>? children}) {
    if (GoRouterState.of(context).fullPath!.contains("/$route")) {
      _currIndex = index;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _currIndex == index ? AppColor.kPrimary : AppColor.white,
            ),
            height: 50,
            child: InkWell(
              onTap: () {
                if (children == null) {
                  context.pushReplacementNamed(route);
                  if (DeviceType.isMobile(context)) {
                    scaffoldKey.currentState?.closeDrawer();
                  }
                  _currIndex = index;
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
                      color: _currIndex == index
                          ? AppColor.white
                          : AppColor.textGrey,
                      height: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text ?? "",
                      style: TextStyle(
                        color: _currIndex == index
                            ? AppColor.white
                            : AppColor.textGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, anim) => RotationTransition(
                              turns: _currIndex == index && isExpanded
                                  ? Tween<double>(begin: 1, end: 1)
                                      .animate(anim)
                                  : Tween<double>(begin: 1, end: 1)
                                      .animate(anim),
                              child:
                                  FadeTransition(opacity: anim, child: child),
                            ),
                        child: _currIndex == index && isExpanded
                            ? Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color:
                                    _currIndex == index ? AppColor.white : null,
                              )
                            : Icon(
                                color:
                                    _currIndex == index ? AppColor.white : null,
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
                          _currIndex = index;
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 75),
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              children[cIndex].name,
                              style: TextStyle(
                                color: ischildActive
                                    ? AppColor.kPrimary
                                    : AppColor.textGrey,
                                fontSize: 14,
                                fontWeight: ischildActive
                                    ? FontWeight.w600
                                    : FontWeight.w500,
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

  DrawerSubItem({required this.name, required this.route});
}
