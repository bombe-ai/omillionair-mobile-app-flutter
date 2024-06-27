import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/auth/verify_otp_page.dart';
import 'package:omillionare/widgets/buttons/primary_button.dart';
import 'package:omillionare/widgets/common/country_dropdown.dart';
import 'package:omillionare/widgets/textFields/text_field_widget.dart';

class SignupPage extends StatefulWidget {
  static const String routeName = 'auth/signup';

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool isTnCAccept = false;
  bool isNewsletterAccept = false;
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
                        Text("Register",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: AppColor.black,
                            )),
                        const SizedBox(height: 7),
                        Text("Sign up by filling the below fields",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                            )),
                        const SizedBox(height: 20),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFieldWidget(
                                  controller: nameController,
                                  hinttext: "Full Name",
                                  labletext: "Full Name",
                                  valText: "Name"),
                              const SizedBox(height: 20),
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
                        const SizedBox(height: 20),
                        TextFieldWidget(
                            controller: confirmPasswordController,
                            hinttext: "Confirm Password",
                            labletext: "Confirm Password",
                            valText: "Confirm Password"),
                        const SizedBox(
                          height: 20,
                        ),
                        if (errorText.isNotEmpty)
                          Text(
                            errorText,
                            style: TextStyle(
                              color: AppColor.red,
                              fontSize: 12,
                            ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: isTnCAccept,
                                activeColor: AppColor.kPrimary,
                                onChanged: (val) {
                                  isTnCAccept = val!;
                                  setState(() {});
                                }),
                            Expanded(
                              child:
                               Text.rich(
                                TextSpan(
                                  text:
                                      "I confirm that I have read and accepted the ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Terms & Conditions',
                                      style: TextStyle(
                                        color: AppColor.blue,
                                        fontSize: 14,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    TextSpan(
                                      text: ' and ',
                                      style: TextStyle(
                                        color: AppColor.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy.',
                                      style: TextStyle(
                                        color: AppColor.blue,
                                        fontSize: 14,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: AppColor.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: isNewsletterAccept,
                                activeColor: AppColor.kPrimary,
                                onChanged: (val) {
                                  isNewsletterAccept = val!;
                                  setState(() {});
                                }),
                            Expanded(
                              child: Text(
                                "I would like to receive offers, newsletters, promotions and other marketing communications.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                            ),
                          ],
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
                          btnColor: !(isTnCAccept) ? AppColor.lightGrey : null,
                          onTap: () {
                            onSubmit();
                          },
                          text: 'CREATE ACCOUNT',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PrimaryButton(
                          height: 50,
                          btnColor: AppColor.white,
                          borderColor: AppColor.lightPrimary,
                          onTap: () {
                            context.pop();
                          },
                          text: 'BACK',
                          textColor: AppColor.lightPrimary,
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
    if (_formKey.currentState!.validate() && isTnCAccept) {
      if (passwordController.text != confirmPasswordController.text) {
        errorText = "Password And Confirm Password Should Be Same";
        return;
      }
      context.pushNamed(OtpPage.routeName);
    }
    setState(() {});
  }
}
