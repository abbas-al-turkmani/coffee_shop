import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/widgets/my_icon_button.dart';
import 'package:iconsax/iconsax.dart';

import '../painter/path_painter.dart';
import '../widgets/deliver_bottom_sheet.dart';

class DeliveryDetailesPage extends StatelessWidget {
  const DeliveryDetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: DeliveryBottomSheet(),
      body: Stack(
        children: [
          // Background map
          Assets.images.map.image(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // Path
          CustomPaint(size: Size.infinite, painter: PathPainter()),

          // location
          Padding(
            padding: EdgeInsets.only(top: 135.h, left: 71.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 1,
              children: [
                Icon(Iconsax.location5, color: MyColors.primaryColor),

                Container(color: Color(0x5fC67C4E), width: 10.w, height: 2.h),
              ],
            ),
          ),

          // Driver Location
          Padding(
            padding: EdgeInsets.only(left: 204.w, top: 267.h),
            child: SizedBox(
              height: 40.h,
              width: 40.w,
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Assets.icons.bike.image(
                      width: 27,
                      fit: BoxFit.fitWidth,
                      color: MyColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // content. back button and gps button.
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyIconButton(
                    onTap: () => Navigator.of(context).pop(),
                    color: MyColors.buttonColor,
                    child: Icon(IconlyLight.arrow_left_2, color: Colors.black),
                  ),
                  MyIconButton(
                    onTap: () {},
                    color: MyColors.buttonColor,
                    child: Icon(Iconsax.gps, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
