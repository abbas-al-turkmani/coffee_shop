import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_heart_button.dart';

class ProductDetailesHeader extends StatelessWidget {
  const ProductDetailesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(10.sp),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(IconlyLight.arrow_left_2),
          ),
        ),

        Text(
          Strings.sDetail(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            height: 1.2.h,
            color: Color(0xFF242424),
          ),
        ),

        Padding(padding: EdgeInsetsGeometry.all(10.sp), child: MyHeartButton()),
      ],
    );
  }
}
