import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/appState/app_start_state.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/modules/auth/login_page.dart';
import 'package:omillionare/modules/dashboard/controller/dashboard_controller.dart';
import 'package:omillionare/modules/home/controller/home_controller.dart';
import 'package:omillionare/route/router_notifier.dart';
import 'package:omillionare/widgets/drawer/drawer.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class DashboardScreen extends ConsumerStatefulWidget {
  static const String routeName = 'dashboard';

  const DashboardScreen({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => DashboardScreenState();
}

class DashboardScreenState extends ConsumerState<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    ref.read(homeControllerProvider).startTimer();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleMenu() async {
    if (_isMenuOpen) {
      await _animationController.reverse();
    } else {
      await _animationController.forward();
      _animationController.reverse();
    }
    _isMenuOpen = !_isMenuOpen;
    if (appStatus == AppStatus.VERIFIED) {
      scaffoldKey.currentState?.openEndDrawer();
    } else {
      context.pushNamed(LoginPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = ref.watch(dashbaordControllerProvider);

    return Scaffold(
      key: scaffoldKey,
      endDrawer: const AppDrawer(),
      appBar: AppBar(
        title: SvgPicture.asset(
          Assets.svg.transparentLogo.path,
        ),
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: AppColor.white,
        surfaceTintColor: AppColor.white,
        primary: true,
        toolbarHeight: 70,
        actions: [
          if (appStatus == AppStatus.VERIFIED)
            SizedBox(
              width: 37,
              height: 37,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.notifications_none_outlined,
                      size: 36,
                      color: AppColor.kPrimary,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: -2,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColor.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "69",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 10),
            decoration:
                BoxDecoration(color: AppColor.kPrimary, shape: BoxShape.circle),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 26,
              icon: AnimatedIcon(
                color: AppColor.white,
                icon: AnimatedIcons.menu_close,
                progress: _animationController,
              ),
              onPressed: _toggleMenu,
            ),
          )
        ],
      ),
      body: widget.child,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: AppColor.white,
        color: AppColor.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              const SizedBox(width: 20),
              InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: const Color.fromRGBO(157, 178, 206, 0.080),
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/home-icon.svg',
                        color: dashboardProvider.currentPageIndex == 0
                            ? AppColor.kPrimary
                            : const Color.fromRGBO(157, 178, 206, 1),
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: dashboardProvider.currentPageIndex == 0
                                ? AppColor.kPrimary
                                : const Color.fromRGBO(157, 178, 206, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              const Spacer(),
              InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: const Color.fromRGBO(157, 178, 206, 0.080),
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/cart-icon.svg',
                        color: dashboardProvider.currentPageIndex == 1
                            ? AppColor.kPrimary
                            : const Color.fromRGBO(157, 178, 206, 1),
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Items",
                        style: TextStyle(
                            color: Color.fromRGBO(157, 178, 206, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              const Spacer(),
              const Spacer(),
              InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: const Color.fromRGBO(157, 178, 206, 0.080),
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/wallet-icon.svg',
                        color: const Color.fromRGBO(157, 178, 206, 1),
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Wallet",
                        style: TextStyle(
                            color: Color.fromRGBO(157, 178, 206, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              const Spacer(),
              InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: const Color.fromRGBO(157, 178, 206, 0.080),
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/user-icon.svg',
                        color: const Color.fromRGBO(157, 178, 206, 1),
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "Profile",
                        style: TextStyle(
                            color: Color.fromRGBO(157, 178, 206, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
            ),
          ],
        ),
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            backgroundColor: AppColor.lightPrimary,
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColor.kPrimary, shape: BoxShape.circle),
              child: SvgPicture.asset(Assets.svg.transparentLogo.path,
                  color: AppColor.white, width: 27, height: 27),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
