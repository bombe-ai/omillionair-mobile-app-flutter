import 'package:flutter/material.dart';
import 'package:omillionare/constants/app_color.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    Key? key,
    required this.value,
    required this.onChanged,
    this.boxcolor,
    this.fillColor,
    this.borderColor,
  }) : super(key: key);

  final bool value;
  final Color? boxcolor;
  final Color? fillColor;
  final Color? borderColor;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
          width: 16.0,
          height: 16.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: value
                  ? (boxcolor ?? AppColor.kPrimary)
                  : borderColor ?? AppColor.lightGrey,
              width: 1.0,
            ),
            color: value
                ? (boxcolor ?? AppColor.kPrimary)
                : fillColor ?? AppColor.lightGrey,
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              size: 14.0,
              color: Colors.white,
            ),
          )),
    );
  }
}
