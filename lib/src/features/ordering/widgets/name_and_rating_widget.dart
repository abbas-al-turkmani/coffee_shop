import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/widgets/my_icon_button.dart';
import 'package:coffee_shop/src/features/home/model/product_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndRatingWidget extends StatelessWidget {
  const NameAndRatingWidget({super.key, required this.module});

  final ProductModule module;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.h,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5.h,
              children: [
                Text(
                  module.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    color: Color(0xFF242424),
                  ),
                ),
                Text(
                  module.type,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xFFA2A2A2),
                  ),
                ),
              ],
            ),

            Row(
              spacing: 4.w,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_rounded, color: Colors.amber, size: 20.sp),
                Text(
                  module.rating.toString(),
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  module.ratingsNum.toString(),
                  style: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 12,
          children: [
            MyIconButton(
              size: 44.sp,
              color: Color(0xFFEDEDED),
              child: Assets.icons.bike.image(),
            ),
            MyIconButton(
              size: 44.sp,
              color: Color(0xFFEDEDED),
              child: Assets.icons.bean.image(),
            ),
            MyIconButton(
              size: 44.sp,
              color: Color(0xFFEDEDED),
              child: Assets.icons.milk.image(),
            ),
          ],
        ),
      ],
    );
  }
}
