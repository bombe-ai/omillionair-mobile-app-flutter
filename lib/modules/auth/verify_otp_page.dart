import 'dart:async';
import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:omillionare/appState/app_start_provider.dart';
import 'package:omillionare/constants/app_color.dart';
import 'package:omillionare/gen/assets.gen.dart';
import 'package:omillionare/helper/device_info.dart';
import 'package:omillionare/modules/auth/verify_success.dart';
import 'package:omillionare/widgets/buttons/primary_button.dart';
import 'package:omillionare/widgets/textFields/text_field_widget.dart';

class OtpPage extends ConsumerStatefulWidget {
  static const String routeName = 'auth/signup/otp';

  const OtpPage({super.key});

  @override
  ConsumerState<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends ConsumerState<OtpPage> {
  TextEditingController otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String errorText = "";

  Timer? _timer;
  int _start = 60;

  void startTimer() {
    _start = 60;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              if (_start == 0) {
                timer.cancel();
              } else {
                _start = _start - 1;
              }
            }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

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
                        TextFieldWidget(
                            controller: otpController,
                            onChanged: (p0) {
                              setState(() {});
                            },
                            hinttext: "Enter OTP",
                            labletext: "Enter OTP",
                            valText: "OTP"),
                        const SizedBox(
                          height: 20,
                        ),
                        Text.rich(
                          TextSpan(
                            text: "",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Click here ',
                                style: TextStyle(
                                  color: (_start == 0)
                                      ? AppColor.blue
                                      : AppColor.grey,
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    if (_start == 0) {
                                      startTimer();
                                    }
                                  },
                              ),
                              TextSpan(
                                text: 'to resend OTP after ${_start} sec',
                                style: TextStyle(
                                  color: AppColor.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                        PrimaryButton(
                          btnColor: (otpController.text.length < 4)
                              ? AppColor.lightGrey
                              : null,
                          height: 50,
                          onTap: () {
                            onSubmit();
                          },
                          text: 'VERIFY',
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
    if (_formKey.currentState!.validate() && (otpController.text.length > 3)) {
      context.pushReplacementNamed(OtpVerifiedPage.routeName);
      ref.read(appStartProvider.notifier).setVerified();

    }
  }
}
