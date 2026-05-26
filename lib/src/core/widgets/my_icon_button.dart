import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    this.onTap,
    this.size,
    this.color = MyColors.primaryColor,
    required this.child,
  });

  final Widget child;
  final void Function()? onTap;
  final double? size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size ?? 52.sp,
        width: size ?? 52.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: child,
      ),
    );
  }
}
