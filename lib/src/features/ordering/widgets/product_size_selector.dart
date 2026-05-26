import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_radio_buttons_outlined.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSizeSelector extends StatelessWidget {
  const ProductSizeSelector({super.key, required this.sizes});

  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            Strings.sSize(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF242424),
              fontSize: 16.sp,
            ),
          ),
          MyRadioButtonsOutlined(
            values: sizes,
            onSelectionChanged: (index) {},
            buttonChildBuilder: (context, isSelected, index) => Text(
              sizes[index],
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: isSelected ? MyColors.primaryColor : Color(0xFF242424),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
