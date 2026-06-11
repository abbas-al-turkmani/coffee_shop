import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class OrderDetailesHeader extends StatelessWidget {
  const OrderDetailesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.centerLeft,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(10.sp),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(IconlyLight.arrow_left_2),
          ),
        ),

        Center(
          child: Text(
            Strings.sOrder(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              height: 1.2.h,
              color: Color(0xFF242424),
            ),
          ),
        ),
      ],
    );
  }
}
