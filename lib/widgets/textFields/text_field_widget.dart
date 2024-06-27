import 'package:flutter/material.dart';
import 'package:omillionare/constants/app_color.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hinttext;
  final String valText;
  void Function(String)? onChanged;
  final String? labletext;
  IconData? prefixIcon;
  Color? fillColor;
  double? borderRadius;
  Color? borderColor;
  final String? regex;
  int? maxLine;
  bool? isOptional;
  bool? obscureText;
  final TextInputType? inputType;

  TextFieldWidget({
    super.key,
    required this.controller,
    required this.hinttext,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.obscureText = false,
    this.prefixIcon,
    required this.valText,
    this.onChanged,
    this.isOptional = false,
    this.maxLine,
    this.labletext,
    this.inputType,
    this.regex,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool obscureVal = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    obscureVal = widget.obscureText!;
  }

  @override
  Widget build(BuildContext context) {
    return (widget.labletext != null && widget.labletext!.isNotEmpty)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [label(), field(context)],
          )
        : field(context);
  }

  Widget label() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.labletext!,
              style: TextStyle(
                color: AppColor.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            if (widget.isOptional == false)
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
      ],
    );
  }

  Widget field(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty && !(widget.isOptional!)) {
          return "Please Enter ${widget.valText}";
        }

        if (value.isNotEmpty && widget.regex != null) {
          RegExp regExp = RegExp(widget.regex!);
          if (!regExp.hasMatch(value)) {
            return "";
          }
        }

        return null;
      },
      autofocus: false,
      onChanged: widget.onChanged ?? (val) {},
      obscuringCharacter: "*",
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
      obscureText: obscureVal,
      cursorColor: AppColor.black,
      controller: widget.controller,
      maxLines: widget.maxLine ?? 1,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
          fillColor: widget.fillColor ?? AppColor.lightGrey,
          filled: true,
          border: borderStyle(),
          disabledBorder: borderStyle(),
          focusedErrorBorder: borderStyle(),
          errorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
            borderSide: BorderSide(
              color: AppColor.red,
            ),
          ),
          errorMaxLines: 1,
          enabledBorder: borderStyle(),
          focusedBorder: borderStyle(),
          labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
          hintText: widget.hinttext,
          hintStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColor.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
          suffixIcon: widget.obscureText == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: IconButton(
                      icon: Icon(
                          obscureVal
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: AppColor.kPrimary),
                      onPressed: () {
                        setState(() {
                          obscureVal = !obscureVal;
                        });
                      }),
                )
              : null,
          prefixIcon: widget.prefixIcon == null
              ? null
              : Icon(
                  widget.prefixIcon,
                  size: 20,
                  color: AppColor.textGrey,
                )),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius ?? 8)),
      borderSide: BorderSide(color: widget.borderColor ?? AppColor.white),
    );
  }
}
