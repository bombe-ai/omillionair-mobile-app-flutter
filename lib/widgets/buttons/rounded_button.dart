import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omillionare/constants/app_color.dart';

class RoundedButton extends StatelessWidget {
  final dynamic onTap;
  final Color? btnColor;
  final Color? borderColor;
  final double? width;
  final Widget childWidget;
  final double? borderRadius;
  final double? height;
  final bool? enableBoxShadow;

  const RoundedButton({
    super.key,
    this.width,
    this.borderRadius,
    this.enableBoxShadow = false,
    required this.onTap,
    required this.childWidget,
    this.btnColor,
    this.height = 40,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          color: btnColor ?? const Color(0xffF9FAFB),
          border: Border.all(color: borderColor ?? Colors.transparent),
          boxShadow: enableBoxShadow!
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                  ),
                ]
              : null,
        ),
        child: Center(child: childWidget),
      ),
    );
  }
}
