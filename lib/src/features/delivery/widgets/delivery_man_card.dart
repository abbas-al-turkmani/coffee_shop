import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class DeliveryManCard extends StatelessWidget {
  const DeliveryManCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            mainAxisSize: .min,
            spacing: 16.w,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                clipBehavior: .antiAlias,
                child: Assets.images.driverImage.image(),
              ),

              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Brooklyn Simmons',
                    style: TextStyle(
                      color: Color(0xFF242424),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'Personal Courier',
                    style: TextStyle(
                      color: MyColors.inActiveColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.borderColor),
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsetsDirectional.all(10),

            child: Icon(Iconsax.call_calling, size: 24.sp),
          ),
        ],
      ),
    );
  }
}
