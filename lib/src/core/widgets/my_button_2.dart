import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton2 extends StatelessWidget {
  const MyButton2({
    super.key,
    this.text,
    this.icon,
    this.child,
    this.backgroundColor,
    required this.onPressed,
  }) : assert(child != null || text != null || icon != null);

  final String? text;
  final IconData? icon;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Color(0xFFC67C4E),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(6.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
      ),
      child:
          child ??
          Center(
            child: text != null
                ? Text(
                    text ?? '',
                    style: theme.elevatedButtonTheme.style!.textStyle!.resolve(
                      {},
                    ),
                  )
                : Icon(icon),
          ),
    );
  }
}
