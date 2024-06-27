import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/constants/app_constants.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/home/home_screen.dart';
import 'package:omillionare/widgets/buttons/primary_button.dart';

class OtpVerifiedPage extends StatefulWidget {
  static const String routeName = 'auth/signup/verified';

  const OtpVerifiedPage({super.key});

  @override
  State<OtpVerifiedPage> createState() => _OtpVerifiedPageState();
}

class _OtpVerifiedPageState extends State<OtpVerifiedPage> {
  TextEditingController otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String errorText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: ScreenSize.height(context),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              image: DecorationImage(
                image: AssetImage(Assets.images.navBarTop.path),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: SizedBox(
              width: ScreenSize.width(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      Assets.images.oMillionaireLogo.path,
                      height: 100,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 0,
            right: 0,
            child: Form(
              key: _formKey,
              child: Container(
                height: ScreenSize.height(context) - 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Text("Congratulations!",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: AppColor.black,
                            )),
                        const SizedBox(height: 7),
                        Text("Number verified successfully",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                            )),
                        const SizedBox(height: 20),
                        Center(
                          child: LottieBuilder.asset(
                            Assets.animation.verify,
                            fit: BoxFit.contain,
                            repeat: false,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          height: 50,
                          onTap: () {
                            onSubmit();
                          },
                          text: 'Go To Home',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onSubmit() {
    if (_formKey.currentState!.validate()) {
      context.goNamed(HomeScreen.routeName);
      sharedPrefs!.setBool("isLogin", true);
      setState(() {});
    }
  }
}
