import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/appState/app_start_provider.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/constants/app_constants.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/auth/signup_page.dart';
import 'package:omillionare/modules/home/home_screen.dart';
import 'package:omillionare/widgets/buttons/primary_button.dart';
import 'package:omillionare/widgets/common/country_dropdown.dart';
import 'package:omillionare/widgets/textFields/text_field_widget.dart';

class LoginPage extends ConsumerStatefulWidget {
  static const String routeName = 'auth/login';

  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Text("Log in",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: AppColor.black,
                            )),
                        const SizedBox(height: 7),
                        Text("Use mobile number to login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                            )),
                        const SizedBox(height: 20),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Mobile Number",
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: TextStyle(
                                      color: AppColor.red,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CountryDropdown(),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextFieldWidget(
                                        controller: phoneController,
                                        inputType: TextInputType.phone,
                                        hinttext: "451236877",
                                        valText: "Mobile Number"),
                                  ),
                                ],
                              )
                            ]),
                        const SizedBox(height: 20),
                        TextFieldWidget(
                            controller: passwordController,
                            hinttext: "Password",
                            labletext: "Password",
                            valText: "Password"),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              height: 1,
                              color: AppColor.blue,
                              fontSize: 14,
                            ),
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
                          text: 'SIGN IN',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "You don't have an account?",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              InkWell(
                                onTap: () {
                                  context.pushNamed(SignupPage.routeName);
                                },
                                child: Text(
                                  ' Click here register',
                                  style: TextStyle(
                                    color: AppColor.blue,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
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
      setState(() {});
      ref.read(appStartProvider.notifier).setVerified();
      context.pushReplacementNamed(HomeScreen.routeName);
      sharedPrefs!.setBool("isLogin", true);
    }
  }
}
