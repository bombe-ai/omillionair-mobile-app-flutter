// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:omillionare/Widgets/home_page/head_carousel.dart';
// import 'package:omillionare/Widgets/layout/hero_section.dart';
// import 'package:omillionare/Widgets/layout/drawer_widget.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         physics: const BouncingScrollPhysics(),
//         controller: ScrollController(),
//         child: Container(
//               color: Color.fromRGBO(227, 234, 237, 100),
//               // padding: const EdgeInsets.all(20),
//               width: double.infinity,
//               // height: double.infinity,
//               child: Column(
//                 children: [
//                   HeroSection(),
//                   HeadCarousel(),
//                   HomePageBottomSection()
//               ]
//             ),
//           )
//       ),
//       endDrawer: DrawerWidget(),
//       bottomNavigationBar: BottomAppBar(
//         surfaceTintColor: Color(0xFFFFFFFF),
//         color: Colors.white,
//         shape: const CircularNotchedRectangle(),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 8),
//           child: Row(
//             children: [
//               const SizedBox(width: 20),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(5.0),
//                 splashColor: Color.fromRGBO(157, 178, 206, 0.080),
//                 focusColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       'assets/icons/home-icon.svg',
//                       color: Color.fromRGBO(157, 178, 206, 1),
//                       width: 27,
//                       height: 27,
//                     ),
//                     const SizedBox(height: 3),
//                     Text("Home", style: TextStyle(color: Color.fromRGBO(157, 178, 206, 1), fontSize: 12, fontWeight: FontWeight.w500),)
//                   ],
//                 )
//               ),
//               const Spacer(),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(5.0),
//                 splashColor: Color.fromRGBO(157, 178, 206, 0.080),
//                 focusColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       'assets/icons/cart-icon.svg',
//                       color: Color.fromRGBO(157, 178, 206, 1),
//                       width: 27,
//                       height: 27,
//                     ),
//                     const SizedBox(height: 3),
//                     Text("Items", style: TextStyle(color: Color.fromRGBO(157, 178, 206, 1), fontSize: 12, fontWeight: FontWeight.w500),)
//                   ],
//                 )
//               ),
//               const Spacer(),
//               const Spacer(),
//               const Spacer(),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(5.0),
//                 splashColor: Color.fromRGBO(157, 178, 206, 0.080),
//                 focusColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       'assets/icons/wallet-icon.svg',
//                       color: Color.fromRGBO(157, 178, 206, 1),
//                       width: 27,
//                       height: 27,
//                     ),
//                     const SizedBox(height: 3),
//                     Text("Wallet", style: TextStyle(color: Color.fromRGBO(157, 178, 206, 1), fontSize: 12, fontWeight: FontWeight.w500),)
//                   ],
//                 )
//               ),
//               const Spacer(),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(5.0),
//                 splashColor: Color.fromRGBO(157, 178, 206, 0.080),
//                 focusColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 child: Column(
//                   children: [
//                     SvgPicture.asset(
//                       'assets/icons/user-icon.svg',
//                       color: Color.fromRGBO(157, 178, 206, 1),
//                       width: 27,
//                       height: 27,
//                     ),
//                     const SizedBox(height: 3),
//                     Text("Profile", style: TextStyle(color: Color.fromRGBO(157, 178, 206, 1), fontSize: 12, fontWeight: FontWeight.w500),)
//                   ],
//                 )
//               ),
//               const SizedBox(width: 20),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: Container(
//         height: 70.0,
//         width: 70.0,
//         child: FittedBox(
//           child: FloatingActionButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(50.0),
//             ),
//             backgroundColor: Color.fromRGBO(1, 126, 51, 1),
//             onPressed: () {  },
//             child: Image.asset('assets/images/oi-logo.png', width: 30, height: 30),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }