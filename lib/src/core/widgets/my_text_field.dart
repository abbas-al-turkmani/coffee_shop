import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
    this.defultString,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.focusedColor = Colors.green,
    this.enabledColor = Colors.brown,
    this.errorColor = Colors.red,
    this.cursorColor = Colors.green,
    this.cursorErrorColor = Colors.red,
    this.hintColor = Colors.grey,
    this.keyboardType,
    this.isCollapsed,
    this.obscureText = false,
    this.textInputAction,
    required this.onFieldSubmitted,
    required this.onChanged,
    this.validator,
  });

  final TextEditingController? controller;
  final String? defultString;
  final String? hintText;
  final bool obscureText;
  final bool? isCollapsed;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color enabledColor;
  final Color errorColor;
  final Color focusedColor;
  final Color cursorColor;
  final Color cursorErrorColor;
  final Color hintColor;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String value)? onFieldSubmitted;
  final void Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    BorderRadius generalBorderRadius = BorderRadius.all(Radius.circular(24.r));

    OutlineInputBorder errorBorder = OutlineInputBorder(
      borderSide: BorderSide(color: errorColor),
      borderRadius: generalBorderRadius,
    );

    // height: utils.getResponsiveHeight(context, 50),

    return TextFormField(
      controller: controller ?? TextEditingController(text: defultString),
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: 1,
      minLines: 1,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      cursorColor: cursorColor,
      cursorErrorColor: cursorErrorColor,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        isCollapsed: isCollapsed,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 20.h),
        alignLabelWithHint: true,
        hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enabledColor),
          borderRadius: generalBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focusedColor),
          borderRadius: generalBorderRadius,
        ),
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
      ),
    );
  }
}
