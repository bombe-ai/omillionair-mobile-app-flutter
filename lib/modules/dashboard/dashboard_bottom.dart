import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/modules/dashboard/controller/dashboard_controller.dart';
import 'package:omillionare/widgets/dashboard_page/play_now.dart';
import 'package:omillionare/widgets/dashboard_page/shop_now.dart';
import 'package:omillionare/widgets/dashboard_page/single_product.dart';

class DashboardBottomSection extends ConsumerStatefulWidget {
  const DashboardBottomSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      DashboardBottomSectionState();
}

class DashboardBottomSectionState
    extends ConsumerState<DashboardBottomSection> {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = ref.watch(dashbaordControllerProvider);

    return Container(
      transform: Matrix4.translationValues(0.0, -50.0, 0.0),
      child: Column(children: [
        Container(
          width: 350,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(17, 0, 0, 0),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      // homeBloc.add(ShopNowState());
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(
                          top: 13, bottom: 13, left: 49.5, right: 39.5),
                      backgroundColor:
                          dashboardProvider.currentPageIndex == 0 ||
                                  dashboardProvider.currentPageIndex == 2
                              ? const Color.fromARGB(255, 0, 122, 51)
                              : Colors.white,
                      elevation: 12.0,
                    ),
                    child: Text('SHOP NOW',
                        style: TextStyle(
                            color: dashboardProvider.currentPageIndex == 0 ||
                                    dashboardProvider.currentPageIndex == 2
                                ? Colors.white
                                : const Color.fromARGB(255, 0, 122, 51),
                            fontWeight: FontWeight.w700,
                            fontSize: 17))),
                TextButton(
                    onPressed: () {},
                    child: Text('PLAY NOW',
                        style: TextStyle(
                            color: dashboardProvider.currentPageIndex == 1
                                ? const Color.fromARGB(255, 33, 149, 243)
                                : const Color.fromARGB(255, 0, 122, 51),
                            fontWeight: FontWeight.w700,
                            fontSize: 17)),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(
                          top: 13, bottom: 13, left: 39.5, right: 49.5),
                      backgroundColor: dashboardProvider.currentPageIndex == 1
                          ? const Color.fromARGB(255, 255, 221, 15)
                          : Colors.white,
                      elevation: 12.0,
                    ))
              ]),
        ),
        const SizedBox(height: 30, width: double.infinity),
        showAppropriateWidget(dashboardProvider.currentPageIndex)
      ]),
    );
  }

  Widget showAppropriateWidget(_activeIndex) {
    if (_activeIndex == 0) {
      return ShopNow();
    } else if (_activeIndex == 1) {
      return PlayNow();
    } else if (_activeIndex == 2) {
      return SingleProduct();
    } else {
      return Container();
    }
  }
}
