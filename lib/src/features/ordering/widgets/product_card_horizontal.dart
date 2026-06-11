import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/widgets/my_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../module/order_item.module.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key, required this.module});

  final OrderItemModule module;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Image and Detailes
        Row(
          spacing: 16.w,
          children: [
            Image(
              image: module.product.image.image,
              width: 54.w,
              height: 54.w,
              fit: BoxFit.contain,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  module.product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: Color(0xFF242424),
                  ),
                ),
                Text(
                  module.product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: MyColors.inActiveColor,
                  ),
                ),
              ],
            ),
          ],
        ),

        // Counter
        MyCounterWidget(initValue: module.count),
      ],
    );
  }
}
