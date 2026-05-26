import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 140.h,
      padding: EdgeInsets.only(left: 24.w, top: 13.h),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.banner1.provider(),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 67.w,
                height: 26.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Color(0xFFED5151),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  Strings.sPromo(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [Color(0xFF111111), Color(0xFF313131)],
                  ),
                ),
                width: 225.w,
                height: 27.h,
              ),
              SizedBox(height: 18.h),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [Color(0xFF111111), Color(0xFF313131)],
                  ),
                ),
                width: 175.w,
                height: 23.h,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Text(
              Strings.sHomeBannerText(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 32.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
