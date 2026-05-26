import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    super.key,
    required this.child,
    this.color = Colors.white,
    this.borderColor = Colors.grey,
    this.onTap,
  });

  final Widget child;
  final Color? color;
  final Color borderColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: BoxBorder.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(12.r),
        ),

        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 43.w,
              vertical: 10.h,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
