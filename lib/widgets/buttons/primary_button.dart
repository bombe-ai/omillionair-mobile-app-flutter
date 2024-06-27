
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omillionare/constants/app_color.dart';

class PrimaryButton extends StatelessWidget {
  final dynamic onTap;
  final Color? btnColor;
  final Color? borderColor;
  final Color? textColor;
  final String text;
  final double? width;
  final double? borderRadius;
  final double? height;

  const PrimaryButton({
    super.key,
    this.width,
    this.borderRadius,
    this.textColor,
    required this.onTap,
    this.btnColor,
    this.height = 45,
    this.borderColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8),
          color: btnColor,
          gradient: btnColor != null
              ? null
              : const LinearGradient(colors: [
                  Color.fromRGBO(1, 181, 16, 1),
                  Color.fromRGBO(1, 126, 51, 1),
                ]),
        ),
        child: Center(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor?? AppColor.white),
          ),
        ),
      ),
    );
  }
}
