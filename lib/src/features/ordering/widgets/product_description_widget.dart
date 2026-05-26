import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/features/home/model/product_module.dart'
    show ProductModule;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key, required this.module});

  final ProductModule module;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          Strings.sDescription(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF242424),
            fontSize: 16.sp,
          ),
        ),
        RichText(
          text: TextSpan(
            text: module.discription,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Color(0xFFA2A2A2),
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
            ),
            children: [
              TextSpan(
                text: Strings.sReadMore(),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFC67C4E),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
