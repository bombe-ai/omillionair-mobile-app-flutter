import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omillionare/constants/app_color.dart';

class CloseButtonWidget extends StatelessWidget {
  final dynamic onTap;
  final Color? btnColor;
  final Color? borderColor;
  final double? width;
  final double? borderRadius;
  final double? height;

  const CloseButtonWidget({
    super.key,
    this.width = 28,
    this.borderRadius,
    required this.onTap,
    this.btnColor,
    this.height = 28,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 5),
            color: btnColor ?? AppColor.white,
            border: Border.all(color: borderColor ?? AppColor.grey, width: 2)),
        child: const Center(child: Icon(Icons.close_rounded)),
      ),
    );
  }
}
