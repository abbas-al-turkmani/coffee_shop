import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xFFEDEDED)),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 16.w,
          vertical: 17.5.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 16.w,
              children: [
                Icon(IconlyLight.discount, color: MyColors.primaryColor),
                Text(
                  Strings.s1DiscountIsApplies(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF313131),
                  ),
                ),
              ],
            ),
            Icon(
              IconlyLight.arrow_right_2,
              size: 24.sp,
              color: Color(0xFF2A2A2A),
            ),
          ],
        ),
      ),
    );
  }
}
